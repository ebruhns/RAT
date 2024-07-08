//All the functions used for setting, creating, changing things within cutscenes

///@description ends current cutscene action and moves to next scene
///
function scrCutsceneEndAction(){

	scene++;
	if scene > array_length(sceneInfo)-1{
		instance_destroy();
		exit;
	}
	
	event_perform(ev_other, ev_user0);
}

///@description create a cutscene with the given scene info
///@param1 scene info
function scrCreateCutscene(_info){

	var inst = instance_create_layer(0, 0, "Instance", oCutscene);
	with(inst){
		sceneInfo = _info;
		event_perform(ev_other, ev_user0);
	}
}

///@description create text box
///@param textID
function scrCutsceneCreateTextBox(_textID){

	
	with (instance_create_depth(0, 0, -9999, oTextbox)){
	
			scrGameDialogue(_textID);
	}
	scrCutsceneEndAction();
}

///@description create instance on a given layer, returns instance created
///@param1 x
///@param2 y
///@param3 layer
///@param4 obj
function scrCutsceneCreateInstanceLayer(_x, _y, _layer, _obj){

	var inst = instance_create_layer(_x, _y, _layer, _obj);
	scrCutsceneEndAction();
	
	return inst;
}



///@description destroy instance
///@param1 instance
function scrCutsceneInstanceDestroy(_inst){

	instance_destroy(_inst);
	scrCutEndAction();
}

///@description destroy instances nearest to given x and y
///@param1 x
///@param2 y
///@param3 obj
function scrCutsceneInstanceDestroyNearest(_x, _y, _obj){

	var inst = instance_nearest(_x, _y, _obj);
	scrCutsceneInstanceDestroy(inst);
}


///@description move a character
///@param1 character object
///@param2 x
///@param3 y
///@param4 relative?
///@param5 speed
function scrCutsceneMoveCharacter(_char, _x, _y, _rel, _spd){

	if (xDest == -1){
	
		if (!_rel) {
			xDest = _x;
			yDest = _y;
		} else{
			xDest = _char.x + _x;
			yDest = _char.y + _y;
			
		}
	}
	
	var xx = xDest;
	var yy = yDest;
	
	with (_char){
		
		sprite_index = sprWalk;
	
		if (point_direction(x, y, xx, yy) >= _spd){
			var dir = point_direction(x, y, xx, yy);
			var ldirx = lengthdir_x(_spd, dir);
			var ldiry = lengthdir_y(_spd, dir);
		
			x += ldirx;
			y += ldiry;
			
			if (ldirx != 0) {image_xscale = sign(ldirx);}
			
		} else{
			x = xx;
			y = yy;
			
			with(other){
			
				xDest = -1;
				yDest = -1;
				
				scrCutsceneEndAction();
			}
		}
	}
}



///@description changes given sprite's xscale (to flip a sprite horizontally) 
///@param1 obj
///@param2 image_xscale
function scrCutsceneChangeXScale(_obj, _xscale){

	_obj._xscale = _xscale;
	scrCutsceneEndAction()
}

///@description changes a variable 
///@param1 object
///@param2 variable -> string
///@param3 variable value
function scrCutsceneChangeVariable(_obj, _var, _val){

	variable_instance_set(_obj.id, _var, _val);
	scrCutsceneEndAction();
}

///@description plays a given sound
///@param1 sound id
///@param2 priority
///@param 3 loop
function scrCutscenePlaySound(_sid, _p, _lp){

	audio_play_sound(sid, p, lp);
	scrCutsceneEndAction();
}

///@description make a cutscene wait 
///@param seconds
function scrCutsceneWait(){

	timer++;
	
	if (timer >= argument[0]*room_speed) {
		
		timer = 0; 
		scrCutsceneEndAction();
	}
}

function scrCreateBoxAtMouse(){

	if(mouse_check_button_pressed(mb_left)){
		
		instance_create_layer(mouse_x, mouse_y, "Instances", oSpeaker);
		scrCutsceneEndAction();
	}
}

///@description script_execute_alt
///@arg ind
///@arg [arg1,arg2,...]
function scrExecuteAlt(){
	var s = argument[0];
	var a = argument[1];
	var len = array_length(argument[1]);
 
	switch(len){
	    case 0 : script_execute(s); break;
	    case 1 : script_execute(s, a[0]); break;
	    case 2:  script_execute(s, a[0], a[1]); break;
	    case 3:  script_execute(s, a[0], a[1], a[2]); break;
	    case 4:  script_execute(s, a[0], a[1], a[2], a[3]); break;
	    case 5:  script_execute(s, a[0], a[1], a[2], a[3], a[4]); break;
	    case 6:  script_execute(s, a[0], a[1], a[2], a[3], a[4], a[5]); break;
	    case 7:  script_execute(s, a[0], a[1], a[2], a[3], a[4], a[5], a[6]); break;
	    case 8:  script_execute(s, a[0], a[1], a[2], a[3], a[4], a[5], a[6], a[7]); break;
	    case 9:  script_execute(s, a[0], a[1], a[2], a[3], a[4], a[5], a[6], a[7], a[8]); break;
	    case 10: script_execute(s, a[0], a[1], a[2], a[3], a[4], a[5], a[6], a[7], a[8], a[9]); break;
	    case 11: script_execute(s, a[0], a[1], a[2], a[3], a[4], a[5], a[6], a[7], a[8], a[9], a[10]); break;
	    case 12: script_execute(s, a[0], a[1], a[2], a[3], a[4], a[5], a[6], a[7], a[8], a[9], a[10], a[11]); break;
	    case 13: script_execute(s, a[0], a[1], a[2], a[3], a[4], a[5], a[6], a[7], a[8], a[9], a[10], a[11], a[12]); break;
	    case 14: script_execute(s, a[0], a[1], a[2], a[3], a[4], a[5], a[6], a[7], a[8], a[9], a[10], a[11], a[12], a[13]); break;
	    case 15: script_execute(s, a[0], a[1], a[2], a[3], a[4], a[5], a[6], a[7], a[8], a[9], a[10], a[11], a[12], a[13], a[14]); break;
	}
}