/// @description Insert description here
// You can write your code in this editor

depth = -9999;

txtboxWidth = 256;
txtboxHeight = 56;

txtBoxSpr[0] = sprMenu;
txtboxImg = 0;
txtboxImgSpd = 0;

border = 4;
lineSep = 12;
lineWidth = txtboxWidth - border*2;


//text
page = 0;
pageNum = 0;
text[0] = "";

//individual chars
char[0, 0] = "";
charX[0, 0] = 0;
charY[0, 0] = 0;

//dialouge options
option[0] = "";
optionLinkID[0] = -1;
optionPos = 0;
optionNum = 0;

textLen[0] = string_length(text[0]);
drawChar = 0;
drawSpd = 1;

setup = false;

//VFX vars
scrSetTextDefaults();
last_free_space = 0;
