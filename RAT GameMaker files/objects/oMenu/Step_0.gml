/// @description Insert description here
// You can write your code in this editor

if !inMenu{
	key_up = keyboard_check_released(vk_up) || keyboard_check_released(ord("W"));
	key_down = keyboard_check_released(vk_down) || keyboard_check_released(ord("S"));
}
key_accept = keyboard_check_released(vk_space) || keyboard_check_released(vk_enter);

oplength = array_length(options[menulvl]);

pos += key_down - key_up;

if pos >= oplength {pos = 0};
if pos < 0 {pos = oplength - 1};

if key_accept{
	
	var _startmenulvl = menulvl;
	
	switch(menulvl){
	
		case 0:
			switch(pos){	
			//start gameΩ
			case 0: room_goto(rmIntroCutscene); break;
			//quit game
			case 1:	game_end(); break;	
			}
			break;
		}
		
	if _startmenulvl != menulvl {pos = 0};
	oplength = array_length(options[menulvl]);

}
