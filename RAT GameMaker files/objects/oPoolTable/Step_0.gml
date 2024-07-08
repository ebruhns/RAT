/// @description Insert description here
// You can write your code in this editor

/// @description Insert description here
// You can write your code in this editor


if !instance_exists(oBallCue) and !win{
	
	instance_create_depth(160, 90, -9999, oUI, {sprite_index : sprGameOver}); 
	if oPlayer.poolJobY{
		createTextBox("GOLDEN RAT - lose"); 
		oPlayer.poolJobY = false; 
	}
	if !instance_exists(oTextbox){
		if keyboard_check(vk_anykey){
			oPlayer.pause = false; 
			room_goto(rmRatTrap);
			oPlayer.y = oPlayer.y; 
		}
	}
	
	
}

if !instance_exists(oBall){

	instance_create_depth(160, 90, -9999, oUI, {sprite_index : sprYouWin}); 
	if oPlayer.poolJobY{
		createTextBox("GOLDEN RAT - win"); 
		oPlayer.poolJobY = false; 
		win = true; 
		instance_destroy(oBallCue); 
		//give money
	}
	if !instance_exists(oTextbox){
		if keyboard_check(vk_anykey){
			oPlayer.pause = false; 
			room_goto(rmRatTrap);
			oPlayer.y = oPlayer.y; 
		}
	}
	
}


