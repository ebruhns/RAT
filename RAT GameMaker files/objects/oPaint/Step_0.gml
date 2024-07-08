/// @description Insert description here
// You can write your code in this editor

key_right = keyboard_check(vk_right) or keyboard_check(ord("D"));
key_left = keyboard_check(vk_left) or keyboard_check(ord("A"));
key_up = keyboard_check(vk_up) or keyboard_check(ord("W"));
key_down = keyboard_check(vk_down) or keyboard_check(ord("S"));
key_paint = keyboard_check_pressed(vk_space);
key_move = key_right or key_left or key_up or key_down;

color = oSprayPaintJob.currentColor; 

if key_right{
	xspd = mvspd;
	if x+xspd >= 203{
		xspd = 0;
	}
	x += xspd;
}

if key_left{
	xspd = -mvspd;
	if x+xspd <= 138{
		xspd = 0;
	}
	x += xspd;
}

if key_down{
	yspd = mvspd;
	if y+yspd >= 133{
		yspd = 0;
	}
	y += yspd;
}

if key_up{
	yspd = -mvspd;
	if y+yspd <= 67{
		yspd = 0;
	}
	y += yspd;
}



