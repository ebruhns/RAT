/// @description Insert description here
// You can write your code in this editor
esc = keyboard_check(vk_escape)

if esc{

	global.pause = true;
}

if (!global.pause) exit;


key_left = keyboard_check(vk_left) or keyboard_check(ord("A"));
key_right = keyboard_check(vk_right) or keyboard_check(ord("D"));
key_up = keyboard_check_released(vk_up) or keyboard_check_released(ord("S"));
key_down = keyboard_check_released(vk_down) or keyboard_check_released(ord("W"));
key_accept = keyboard_check_pressed(vk_enter) or keyboard_check_pressed(vk_space);


var dsGrid = MenuPages[page], dsHeight = ds_grid_height(dsGrid);

if (inputting){

	switch(dsGrid[# 1, menuOptions[page]]){
		case MenuPageType.shift: 
			var hinput = key_right - key_left;
			if (hinput != 0){
				//audio
				dsGrid[# 3, menuOptions[page]] += hinput;
				dsGrid[# 3, menuOptions[page]] = clamp(dsGrid[# 3, menuOptions[page]], 0, array_length(dsGrid[#4, menuOptions[page]])-1);
			}
			break;
			
		case MenuPageType.slider: 
		switch(menuOptions[page]){
		
			case 0: if (!audio_is_playing(sfx_ui_keyboard_click)) {audio_play_sound(sfx_ui_keyboard_click, 1, false);} break;
			case 1: if (!audio_is_playing(sfx_ui_keyboard_click)) {audio_play_sound(sfx_ui_keyboard_click, 1, false);} break;
			case 2: if (!audio_is_playing(sfx_ui_keyboard_click)) {audio_play_sound(sfx_ui_keyboard_click, 1, false);} break;
			
		}
		var hinput = key_right - key_left;
			if (hinput != 0){
				//audio
				dsGrid[# 3, menuOptions[page]] += hinput*0.01;
				dsGrid[# 3, menuOptions[page]] = clamp(dsGrid[# 3, menuOptions[page]], 0, 1);
				if (inputting) {script_execute(dsGrid[# 2, menuOptions[page]], dsGrid[# 3, menuOptions[page]]);}
			}
			break;
			
		case MenuPageType.toggle: 
		var hinput = key_right - key_left;
			if (hinput != 0){
				//audio
				dsGrid[# 3, menuOptions[page]] += hinput;
				dsGrid[# 3, menuOptions[page]] = clamp(dsGrid[# 3, menuOptions[page]], 0, 1);
			}
			
		break;
	}

}else{
	pos = key_down - key_up;

	if (pos != 0){

		menuOptions[page] += pos;
		if (menuOptions[page] > dsHeight -1) {menuOptions[page] = 0};
		if (menuOptions[page] < 0) {menuOptions[page] = dsHeight -1};
	}
}

if key_accept{
	
	switch(dsGrid[# 1, menuOptions[page]]){
		case MenuPageType.scriptRunner: script_execute(dsGrid[# 2, menuOptions[page]]); break;
		case MenuPageType.pageChange: page = dsGrid[# 2, menuOptions[page]]; break;
		case MenuPageType.shift: 
		case MenuPageType.slider: 
		case MenuPageType.toggle: if (inputting) {script_execute(dsGrid[# 2, menuOptions[page]], dsGrid[# 3, menuOptions[page]]);}
			inputting = !inputting;
			break;
			
	}
		//audio 
		//audio_play_sound()

}

