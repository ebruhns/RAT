key_up = keyboard_check_released(vk_up) or keyboard_check_released(ord("W"));
key_down = keyboard_check_released(vk_down) or keyboard_check_released(ord("S"));
key_left = keyboard_check_released(vk_left) or keyboard_check_released(ord("A"));
key_right = keyboard_check_released(vk_right) or keyboard_check_released(ord("D"));
key_jump = keyboard_check_released(vk_space);
key_move = key_up or key_down or key_left or key_right or key_jump;

key_any = keyboard_check_released(vk_anykey) and !key_move;
key_accept = keyboard_check(vk_enter);


textBox_x = camera_get_view_x(view_camera[0]);
textBox_y = camera_get_view_y(view_camera[0]) + 124;

//setup 

if !setup{
	
	setup = true;
	draw_set_font(Font1);
	draw_set_valign(fa_top);
	draw_set_halign(fa_left);
	
	
	for (var p = 0; p < pageNum; p++){
		
		textLen[p] = string_length(text[p]);
		
		//x offset for text box
		//character on left
		textXOffset[p] = 64;
		portraitXOffset[p] = 0;
		
		//no character portrait
		if speakerSpr[p] == noone{
			textXOffset[p] = 32;
		}
	
		//type individual characters for cleaner line break and vfx
		for (var c = 0; c < textLen[p]; c++){
	
			var _charPos = c+1;
			char[c, p] = string_char_at(text[p], _charPos);
			
			//get width of current line of text
			var _txtUptoChar = string_copy(text[p], 1, _charPos);
			var _currentTxtW = string_width(_txtUptoChar) - string_width(char[c, p]);
			
			//set last free space
			if _charPos == " " {last_free_space = _charPos+1}
			
			//get line breaks
			if _currentTxtW - lineBreakOffset[p] > lineWidth{
			
				lineBreakPos[lineBreakNum[p], p] = last_free_space;
				lineBreakNum[p]++;
				var _txtUptoLastSpace = string_copy(text[p], 1, last_free_space);
				var _last_free_space_string = string_char_at(text[p], last_free_space);
				lineBreakOffset[p] = string_width(_txtUptoLastSpace) - string_width(_last_free_space_string);
			}
			
		}
		
		////get each characters coordinates
		for (var c = 0; c < textLen[p]; c++){
			
			var _charPos = c+1;
			var _txtX = textBox_x + textXOffset[p] + border;
			var _txtY = textBox_y + border;
		
			//get width of current line of text
			var _txtUptoChar = string_copy(text[p], 1, _charPos);
			var _currentTxtW = string_width(_txtUptoChar) - string_width(char[c,p]);
			var _txtLine = 0;
			
			//compensate for line breaks
			for (var lb = 0; lb < lineBreakNum[p]; lb++){
			
				if _charPos >= lineBreakPos[lb,p]{
					
					var _strCopy = string_copy(text[p], lineBreakPos[lb,p], _charPos - lineBreakPos[lb,p]);
					_currentTxtW = string_width(_strCopy);
					
					//record the line this character should be on
					_txtLine = lb+1;
				}
			}
			
			//add to the x and y coordinates based on the new info
			charX[c,p] = _txtX + _currentTxtW;
			charY[c,p] = _txtY + _txtLine*lineSep;
		}
	}
}

//type text

if drawChar < textLen[page]{

	drawChar += drawSpd;
	drawChar = clamp(drawChar, 0, textLen[page]);
}

//----------player input advance text----------------

if key_any{

	if drawChar == textLen[page]{
	
		if page < pageNum - 1{
			page++;
			drawChar = 0;
		}
		else{
			//link to next text box (options)
			if optionNum > 0{
			
				createTextBox(optionLinkID[optionPos]);
			}
			instance_destroy();
		}
	}
	
	//not done typing
	else{
		
		drawChar = textLen[page];
	
	}
}




//-------------------------------------draw textbox---------------

textBoxSpr_w = sprite_get_width(sprMenu);
textBoxSpr_h = sprite_get_height(sprMenu);

if speakerSpr[page] != noone{

	draw_sprite_ext(speakerSpr[page], -1, textBox_x, textBox_y - 8, 1, 1, 0, c_white, 1);
}

draw_sprite_ext(txtBoxSpr[page], 
				-1, 
				textBox_x + textXOffset[page], 
				textBox_y, 
				txtboxWidth/textBoxSpr_w,
				txtboxHeight/textBoxSpr_h, 
				0,
				c_white, 
				1)

				
//------------------------------options-------------------------

if drawChar == textLen[page] and page == pageNum - 1{
	
	//select option
	optionPos += key_down - key_up;
	optionPos = clamp(optionPos, 0, optionNum-1);
	

	var _opSpace = 15;
	var _opBorder = 4;
	
	for (var i = 0; i < optionNum; i++){
		
			//draw option boxes
			var _opWidth = string_width(option[i]) + _opBorder *2;
			draw_sprite_ext(sprMenu, -1, 
							textBox_x + textXOffset[page] + 16, 
							(textBox_y+56) - _opSpace*optionNum + _opSpace*i, 
							_opWidth/textBoxSpr_w, 
							(_opSpace - 1)/textBoxSpr_h, 
							0, 
							c_white, 
							1);
			//draw option text
			var _c = c_white;
			if optionPos == i {
				_c = c_yellow
				draw_sprite(sprPizzaArrow, -1, 
						textBox_x + textXOffset[page] + 4, 
						(textBox_y+60) - _opSpace*optionNum + _opSpace*i);
			};
			draw_text_ext_color(textBox_x + textXOffset[page] + border + 16, 
							   (textBox_y+56) - _opSpace*optionNum + _opSpace*i + 2, 
								option[i], 
								_opSpace,
								_opWidth,
								_c, _c, _c, _c,	1);
								
			
		}
}
				
				
//draw the text
var _drawtext = string_copy(text[page], 1, drawChar);
draw_text_ext(textBox_x + textXOffset[page] + border, 
			  textBox_y + border, 
			  _drawtext, 
			  lineSep,
			  lineWidth);
			  
//for (var c = 0; c < drawChar; c++){

	//the text
//	draw_text(charX[c,page], charY[c, page], char[c,page]);
//}

			  
			  

