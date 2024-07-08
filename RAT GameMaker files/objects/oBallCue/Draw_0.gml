/// @description Insert description here
// You can write your code in this editor

/// @description Insert description here
// You can write your code in this editor

draw_self(); 

key_clockwise = keyboard_check(ord("D")) or keyboard_check(vk_right); 
key_countercw = keyboard_check(ord("A")) or keyboard_check(vk_left); 
pulling = keyboard_check(vk_space) or keyboard_check(vk_enter); 

if (phy_speed != 0) then exit; 

if pulling and instance_exists(oCue){

	cueDir = point_direction(x, y, cueX, cueY); 
	oCue.x = clamp(oCue.x, x-32, x+32); 
	oCue.y = clamp(oCue.y, y-32, y+32); 
	
	if (oCue.y > y-32) and (oCue.y < y+32){
		oCue.x += lengthdir_x(1, cueDir); 
	}
	if (oCue.x > x-32) and (oCue.x < x+32){
		oCue.y += lengthdir_y(1, cueDir); 
	}
	
}

else {
	
	
	if keyboard_check_released(vk_space) or keyboard_check_released(vk_enter){
	
		physics_apply_impulse(x, y, x-oCue.x, y-oCue.y); 
		instance_destroy(oCue); 
		
	}
	
	if key_clockwise and instance_exists(oCue){ 
	
		oCue.image_angle--; 
		cueX = x + lengthdir_x(5, oCue.image_angle-90); 
		cueY = y + lengthdir_y(5, oCue.image_angle-90); 
	}

	if key_countercw and instance_exists(oCue) {

		oCue.image_angle++; 
		cueX = x - lengthdir_x(5, oCue.image_angle+90); 
		cueY = y - lengthdir_y(5, oCue.image_angle+90); 
	}
}

cueDir = point_direction(x, y, cueX, cueY); 
draw_line_color(x, y, x + lengthdir_x(128, cueDir-180), y + lengthdir_y(128, cueDir-180), c_white, c_white); 

if !instance_exists(oCue) and phy_speed == 0{
	instance_create_layer(x, y, "PoolBalls", oCue, {image_angle : 270});
	cueX = x-5; 
	cueY = y; 
	cueDir = point_direction(x, y, cueX, cueY); 
	
}

