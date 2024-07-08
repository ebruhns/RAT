if !setup{
	if (place_meeting(x, y, oPlayer)){

			//draw_sprite(oPlayer.sprite_index, 0, x, y);
			//instance_deactivate_object(oPlayer);
			//player lose wasd/jump control 
			if oPlayer.key_move {
				oPlayer.image_index = 0; 
				oPlayer.image_speed = 0; 
				oPlayer.xspd = 0; 
				oPlayer.yspd = 0; 
			}
			createTextBox(textID);
			setup = true;
			//instance_destroy();
			
	}
}

if !instance_exists(oTextbox) and setup{

	fadetoblack.image_alpha+=0.01; 
	instance_destroy(oK9);
	instance_activate_object(oPlayer);
	
}

if setup and fadetoblack.image_alpha == 1 { //and !tyCardSetup{

	createTextBox("Thank you for playing!");  
	//tyCardSetup = true; 

	if oPlayer.key_move{
		fadetoblack.image_alpha = 0; 
		instance_destroy(); 
	}
}
