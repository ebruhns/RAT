/// @description draw menu

if (!global.pause) exit;

var dsGrid = MenuPages[page], dsHeight = ds_grid_height(dsGrid);
var xBuffer = 16, yBuffer = 32;
var xStart = viewWidth/2, yStart = (viewHeight/2) - ((((dsHeight-1)/2)*yBuffer));

//draw the box
//hardcoded to fit the current window... TODO: generalize this
draw_sprite_ext(sprMenu, -1, 0, 0, 20, 11.25, 0, c_white, .75);

//draw options on left side
draw_set_font(Font1);
draw_set_valign(fa_middle);
draw_set_halign(fa_right);

var ltx = xStart - xBuffer, lty;
for (var yy = 0; yy < dsHeight; yy++){

	
	var c = c_white;
	lty = yStart + (yy*yBuffer);
	if (yy == menuOptions[page]){
		c = c_yellow;
		draw_sprite_ext(sprPizzaArrow, -1, ltx + xBuffer-4, lty+4, 1, 1, 180, c_white, 1);
	}
	draw_text_color(ltx, lty, dsGrid[#0, yy], c, c, c, c, 1);
	
}


//draw dividing line
draw_set_color(c_white); 
draw_line(xStart, yStart, xStart, lty);

//draw option on right side

draw_set_halign(fa_left);


var rtx = xStart + xBuffer, rty;

yy = 0; repeat(dsHeight){
	

	rty = yStart + (yy*yBuffer);
	
	switch(dsGrid[# 1, yy]){
	
		case MenuPageType.shift:
			var currentVal = dsGrid[# 3, yy];
			var currentArray = dsGrid[# 4, yy];
			var leftShift = "<<";
			var rightShift = ">>";
			
			if (currentVal == 0) leftShift = "";
			if (currentVal == array_length(dsGrid[# 4, yy])-1) rightShift = "";
			
			c = c_white;
			
			if (inputting and yy == menuOptions[page]){ c = c_yellow;}
			draw_text_color(rtx, rty, currentArray[currentVal], c, c, c, c, 1);
			
			
			break;
			
		case MenuPageType.slider:
			var len = 64;
			var currentVal = dsGrid[# 3, yy];
			var currentArray = dsGrid[# 4, yy];
			circlePos = ((currentVal - currentArray[0])/ (currentArray[1] - currentArray[0]));
			var currentVal = dsGrid[# 3, yy];
			c = c_white;
			
			draw_line_width(rtx, rty, rtx+len, rty, 2);
			
			if (inputting and yy == menuOptions[page]){ c = c_yellow;}
			draw_circle_color(rtx + (circlePos*len), rty, 4, c, c, false);
			draw_text_color(rtx + (len*1.2), rty, string(floor(circlePos*100))+"%", c, c, c, c, 1);
			
			break;
			
		case MenuPageType.toggle:
			var currentVal = dsGrid[# 3, yy];
			var c1, c2;
			c = c_white;
			
			if (inputting and yy == menuOptions[page]){ c = c_yellow;}
			
			if (currentVal == 0) {c1 = c; c2 = c_dkgray;}
			else				 {c1 = c_dkgray; c2 = c;}
			
			
			draw_text_color(rtx, rty, "ON", c1, c1, c1, c1, 1);
			draw_text_color(rtx+32, rty, "OFF", c2, c2, c2, c2, 1);
		
			break;
	}
			
	yy++;
}

draw_set_valign(fa_top);