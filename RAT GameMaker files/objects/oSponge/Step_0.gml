/// @description Insert description here
// You can write your code in this editor

//Player input
key_right = keyboard_check(vk_right) or keyboard_check(ord("D"));
key_left = keyboard_check(vk_left) or keyboard_check(ord("A"));
key_up = keyboard_check(vk_up) or keyboard_check(ord("W"));
key_down = keyboard_check(vk_down) or keyboard_check(ord("S"));


if key_right{
	xspd = mvspd;
	if place_meeting(x + xspd, y, oWall){
		xspd = 0;
	}
	x += xspd;
}

if key_left{
	xspd = -mvspd;
	if place_meeting(x + xspd, y, oWall){
		xspd = 0;
	}
	x += xspd;
}

if key_down{
	yspd = mvspd;
	if place_meeting(x, y + yspd, oWall){
		yspd = 0;
	}
	y += yspd;
}

if key_up{
	yspd = -mvspd;
	if place_meeting(x, y + yspd, oWall){
		yspd = 0;
	}
	y += yspd;
}