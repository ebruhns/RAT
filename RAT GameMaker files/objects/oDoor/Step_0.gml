/// @description Insert description here
// You can write your code in this editor

key_up = keyboard_check_pressed(vk_up) or keyboard_check_pressed(ord("W"));

if place_meeting(x, y, oPlayer){

	oUI.image_alpha = 1; 

	if key_up and leaveAllowed{
		show_debug_message("leaving room"); 
		room_goto(targetrm);
		oPlayer.x = targetx;
		oPlayer.y = targety;
		
	} else if key_up and !leaveAllowed{
	
		createTextBox("Roomie Rat - job not done"); 
		oSpeaker.direction = -1; 
	}
	
} else { oUI.image_alpha = 0; }

