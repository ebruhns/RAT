/// @description Insert description here
// You can write your code in this editor

image_xscale = 1;
image_yscale = 1;
x = 96;
y = 26;

canvasSurface = surface_create(window_get_width(), window_get_height()); 
canvas = instance_create_layer(139, 68, "Canvas", oSubwayCanvas);

//splats
splatPurple = instance_create_layer(110, 28, "Splats", oPaintSplat, {image_alpha : 0}); 
splatPink = instance_create_layer(126, 30, "Splats", oPaintSplat, {image_alpha : 0}); 
splatDBlue = instance_create_layer(139, 28, "Splats", oPaintSplat, {image_alpha : 0}); 
splatLBlue = instance_create_layer(153, 30, "Splats", oPaintSplat, {image_alpha : 0}); 
splatDGreen = instance_create_layer(165, 28, "Splats", oPaintSplat, {image_alpha : 0}); 
splatLGreen = instance_create_layer(179, 30, "Splats", oPaintSplat, {image_alpha : 0}); 
splatYellow = instance_create_layer(194, 28, "Splats", oPaintSplat, {image_alpha : 0}); 
splatOrange = instance_create_layer(205, 30, "Splats", oPaintSplat, {image_alpha : 0}); 
splatRed = instance_create_layer(205, 46, "Splats", oPaintSplat, {image_alpha : 0}); 
splatWhite = instance_create_layer(194, 43, "Splats", oPaintSplat, {image_alpha : 0}); 
splatBlack = instance_create_layer(180, 46, "Splats", oPaintSplat, {image_alpha : 0}); 
splatBrown = instance_create_layer(168, 43, "Splats", oPaintSplat, {image_alpha : 0}); 

colPurple = $FF00AF; 
colPink = $FF00FC; 
colDBlue = $FF2000; 
colLBlue = $FFDD00; 
colDGreen = $006004;
colLGreen = $00FF0B; 
colYellow = $00E8FF; 
colOrange = $0081FF;
colRed = c_red; 
colWhite = c_white; 
colBlack = c_black; 
colBrown = $003A5A; 

colEraser = $555556; 

colorArray = [colPurple, colPink, colDBlue, colLBlue, colDGreen, colLGreen, 
			  colYellow, colOrange, colRed, colWhite, colBlack, colBrown]; 
			  
splatArray = [splatPurple, splatPink, splatDBlue, splatLBlue, splatDGreen, splatLGreen, 
			  splatYellow, splatOrange, splatRed, splatWhite, splatBlack, splatBrown]; 

currentSplatNum = 0; 
cursor = instance_create_layer(114, 24, "Cursor", oPaintBrushCursor); 

//tools
sprayCan = instance_create_layer(99,136, "Tools", oPaintTools, {sprite_index : sprPropSprayCan, image_speed : 0, image_index : 1});
paintBrush = instance_create_layer(99,119,"Tools",oPaintTools, {sprite_index: sprPropPaintBrush, image_speed : 0}); 
eraser = instance_create_layer(99,102,"Tools", oPaintTools, {sprite_index: sprPropEraser, image_speed : 0}); 
cutout = instance_create_layer(99,85,"Tools",oPaintTools, {sprite_index: sprPropCutout, image_speed : 0}); 
stencil = instance_create_layer(99,68,"Tools",oPaintTools, {sprite_index: sprPropStencil, image_speed : 0}); 

//save and quit
saveTool = instance_create_layer(186, 136, "Tools", oPaintTools, {image_alpha : 0}); 
clearTool = instance_create_layer(203, 136, "Tools", oPaintTools, {image_alpha : 0}); 

toolsArray = [sprayCan, paintBrush, eraser, cutout, stencil]; 
currentToolNum = 0; 

paint = instance_create_layer(160, 90, "Cursor", oPaint); 