/// @description Insert description here
// You can write your code in this editor

textID = "intro-cutscene"; 
createTextBox(textID); 

//BG objects
foreground = instance_create_layer(0, 180, "Foreground", oMoveableBG, {sprite_index : BG_NY_SKYLINE_fore});
foreground2 = instance_create_layer(320, 180, "Foreground", oMoveableBG, {sprite_index : BG_NY_SKYLINE_fore});

midground = instance_create_layer(0, 180, "Midground", oMoveableBG, {sprite_index : BG_NY_SKYLINE_mid})
midground2 = instance_create_layer(320, 180, "Midground", oMoveableBG, {sprite_index : BG_NY_SKYLINE_mid})

background = instance_create_layer(0, 180, "BG", oMoveableBG, {sprite_index : BG_NY_SKYLINE_back}) 
background2 = instance_create_layer(320, 180, "BG", oMoveableBG, {sprite_index : BG_NY_SKYLINE_back}) 

fadetoblack = instance_create_layer(0, 0, "FadetoBlack", oFadetoBlack, {image_alpha : 0}); 

//bg x coords
fgX = 0; 
mgX = 0; 
bgX = 0; 

