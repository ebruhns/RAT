//Player input

key_right = keyboard_check(vk_right) or keyboard_check(ord("D"));
key_left = keyboard_check(vk_left) or keyboard_check(ord("A"));
key_up = keyboard_check(vk_up) or keyboard_check(ord("W"));
key_down = keyboard_check(vk_down) or keyboard_check(ord("S"));
key_jump = keyboard_check_pressed(vk_space);
key_move = key_right or key_left or key_up or key_down or key_jump;



if !global.pause and !instance_exists(oTextbox) and !pause{
	//change image based on xspd
	if (xspd != 0) image_xscale = sign(xspd);

	//gravity
	yspd = yspd + grav;
	if yspd > termVel {yspd = termVel;}
	
	if place_meeting(x, y + yspd, oWall){
		while (!place_meeting(x, y + sign(yspd), oWall)){
		
			y += sign(yspd); 
			}
			yspd = 0;
	}

	if place_meeting(x, y+yspd, oPassthru){
		
		while (!place_meeting(x, y + sign(yspd), oPassthru)){
		
			y += sign(yspd); 
			}

		if yspd < 0{
			y += yspd-1;
		}
		else if !key_down{
			yspd = 0;
		}
	}
	y += yspd;


	//jumping
	if key_jump and 
	(place_meeting(x, y+1, oWall) or place_meeting(x, y+1, oPassthru)){
		yspd = -5;
	}

	//right
	if key_right{
		xspd = mvspd;
		if place_meeting(x + xspd, y, oWall){
			xspd = 0;
		}
		
		x += xspd;
		image_speed = mvspd/3;
		sprite_index = sprWalk;
	}

	//left
	if key_left{
		xspd = -mvspd;
		if place_meeting(x + xspd, y, oWall){
			xspd = 0;
		}
		x += xspd;
		image_speed = mvspd/3;
		sprite_index = sprWalk;
	}

	//climb
	if key_up and place_meeting(x, y, oClimbable){
		pClimbing = true;
		yspd = -mvspd;
		grav = 0;
		y += yspd;
		image_speed = 0;
		sprite_index = sprClimb;
	}

	if !place_meeting(x, y, oClimbable)
		{
			grav = 0.3;
			pClimbing = false;
		}

	//down
	if key_down{
		if place_meeting(x, y+1, oWall){
			yspd = 0;
			image_speed = 0;
			sprite_index = sprWalk;
		}
		if place_meeting(x, y+1, oPassthru){
			if place_meeting(x, y+1, oWall){
				yspd = 0;
			}
			else{
				yspd = 1;
				y += yspd;
				image_speed = 0;
				sprite_index = sprFall;
			}
		
		}
		//if !place_meeting(x, y+1, oWall){
		
		//}
	}

	//idle 
	if !key_move{
		
		if pSmoking{
			show_debug_message(string(image_index)); 
			if image_index == sprite_get_number(sprPlayerSmoking)-1{
				pSmoking = false; 
				sprite_index = sprPlayerR;
				image_speed = 0; 
				image_index = 0; 
			}
		} else {
			image_speed = 0;
			image_index = 0;
			sprite_index = sprPlayerR; 
			//pSmoking = false; 
			mvspd = 2;
		}
	}
	

	if keyboard_check(vk_shift){
		mvspd = 4;
	}

}

if instance_exists(oTextbox){

	//pause = true; 
	image_speed = 0;  
}

//pause = false; 