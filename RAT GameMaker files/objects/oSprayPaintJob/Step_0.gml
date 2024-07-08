/// @description Insert description here
// You can write your code in this editor


currentTool = toolsArray[currentToolNum]; 
currentSplat = splatArray[currentSplatNum]; 
currentColor = colorArray[currentSplatNum]; 

//change tool
if keyboard_check_pressed(ord("Q")){

	//unhighlight current tool 
	toolsArray[currentToolNum].image_index = 0; 
	
	//change current tool
	currentToolNum++; 
	if currentToolNum >= array_length(toolsArray){
	
		currentToolNum = 0; 
	}
	toolsArray[currentToolNum].image_index = 1; 
	
}

//change paint
if keyboard_check_pressed(ord("E")){

	currentSplatNum++;  
	if currentSplatNum >= array_length(splatArray){
	
		currentSplatNum = 0; 
	 
	}
	
	//move cursor
	cursor.x = splatArray[currentSplatNum].x + 4; 
	cursor.y = splatArray[currentSplatNum].y - 4; 
	
}

if keyboard_check_pressed(ord("Z")){

	//create text box that asks 'are you sure you're ready to save and quit?'
	//save canvas sprite
	//exit 
	
	//oSubwayCanvas.sprite_index = sprite_create_from_surface(); 
}

if keyboard_check_pressed(ord("X")){

	//create text box 'are you sure you want to delete everything?'
	//reset canvas sprite to blank
	
	surface_free(canvasSurface); 
}

//switch paint tool by case
switch (currentTool){
	
	case sprayCan: break; 
	case paintBrush: break; 
	case eraser: currentColor = colEraser; break; 
	case cutout: break; 
	case stencil: break; 

}
