/// @description Insert description here
// You can write your code in this editor

draw_sprite_ext(sprite_index, image_index, x, y, width/sprite_width, height/sprite_height, 0, c_white, .75);

draw_set_font(Font1);
draw_set_valign(fa_top);
draw_set_halign(fa_left);

for (var i = 0; i < oplength; i++){
	
	var _c = c_white;
	if pos == i {
		_c = c_yellow;
		draw_sprite(sprPizzaArrow, -1, x + opborder - 8 , y +opborder + opspace*i + 2);
		}
	draw_text_color(x+opborder, y+opborder + opspace*i, options[menulvl, i], _c, _c, _c, _c, 1);

}
