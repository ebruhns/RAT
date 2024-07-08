if !setup{

	
	if place_meeting(x, y, oPlayer) and keyboard_check(ord("E")){

		createTextBox(textID);
		if !repeatText{setup = true;}
	}
	
}
