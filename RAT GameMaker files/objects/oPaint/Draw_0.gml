/// @description Insert description here
// You can write your code in this editor

draw_sprite(sprite_index, -1, x, y); 

if !surface_exists(canvasSurface){

	canvasSurface = surface_create(window_get_width(), window_get_height()); 
	
}

surface_set_target(canvasSurface);

draw_set_color(color); 


if keyboard_check(vk_space){
	draw_circle(x, y, 1, false); 
}
surface_reset_target(); 
draw_surface(canvasSurface, 0, 0); 
	



