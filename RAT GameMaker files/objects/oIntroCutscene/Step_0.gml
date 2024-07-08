/// @description Insert description here
// You can write your code in this editor

foreground.x -= 0.5;
foreground2.x -= 0.5;

midground.x -= 0.35; 
midground2.x -= 0.35;

background.x -= 0.2; 
background2.x -= 0.2;

if foreground.x <= -320 {foreground.x = 320;}
if foreground2.x <= -320 {foreground2.x = 320;}

if midground.x <= -320 {midground.x = 320;}
if midground2.x <= -320 {midground2.x = 320;}

if background.x <= -320 {background.x = 320;}
if background2.x <= -320 {background2.x = 320;}


if !instance_exists(oTextbox){

	fadetoblack.image_alpha += 0.01; 
	if fadetoblack.image_alpha == 1 {
		room_goto(rmRATCardboardHouse); 
	}
	
}