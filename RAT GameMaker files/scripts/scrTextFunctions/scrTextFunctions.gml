
function scrSetTextDefaults(){

	lineBreakPos[0, pageNum] = 999;
	lineBreakNum[pageNum] = 0;
	lineBreakOffset[pageNum] = 0;
	
	txtBoxSpr[pageNum] = sprMenu;
	speakerSpr[pageNum] = noone;
	speakerSide[pageNum] = 1;
}


///@ param text
///@param [portrait]
function scrText(_text){

	scrSetTextDefaults();
	text[pageNum] = _text;
	
	if argument_count > 1{
		speakerSpr[pageNum] = argument[1];

	
	}
	
	pageNum ++;
}

///@param option, optionLinkID
function scrOptions(_option, _optionLinkID){

	option[optionNum] = _option;
	optionLinkID[optionNum] = _optionLinkID;
	optionNum++; 
}

///@param textID
function createTextBox(_textID){

	
	with (instance_create_depth(0, 0, -9999, oTextbox)){
	  
		scrGameDialogue(_textID);
	}
	
}