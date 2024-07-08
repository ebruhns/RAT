// scripts for menu functions

///@param ["Name1", elementType1, entries1...]
///@param ["Name2", elementType2, entries2...]
function scrCreateMenuPage(){

	var arg;
	for (var i = 0; i < argument_count; i++){
	
		arg[i] = argument[i];
	
	}
	
	//var MenuGridID = ds_grid_create(array_length(argument[0]), argument_count);
	var MenuGridID = ds_grid_create(5, argument_count);
	
	
	i = 0; repeat(argument_count){
	
		var array = arg[i];
		var arrayLen = array_length(array);
		
		var arrayX = 0; repeat(arrayLen){
			
			MenuGridID[# arrayX, i] = array[arrayX];
			arrayX++;
		}
	
	i++;
	}
	
	return MenuGridID;

}


function scrResumeGame(){
	
	global.pause = false;
	
}

function scrExitGame(){

	game_end();
}

//@param value
function scrChangeVolume(){
	
	var type = menuOptions[page];
	
	switch(type){
		case 0: audio_master_gain(argument[0]); break;
		case 1: audio_group_set_gain(audiogroup_SFX, argument[0], 0); break;
		case 2:  audio_group_set_gain(audiogroup_MUSIC, argument[0], 0); break;
		
	}
}

function scrChangeWindow(){
	
	switch(argument[0]){
		case 0:  window_set_fullscreen(true); break;
		case 1:  window_set_fullscreen(false); break;
			
	
	}
}