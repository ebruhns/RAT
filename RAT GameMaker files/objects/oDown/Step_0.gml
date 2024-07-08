/// @description Insert description here
// You can write your code in this editor

key_down = keyboard_check(vk_down) or keyboard_check(ord("S"));

if place_meeting(x, y, oPlayer) and key_down{

	room_goto(targetrm);
	oPlayer.x = targetx;
	oPlayer.y = targety;
}
