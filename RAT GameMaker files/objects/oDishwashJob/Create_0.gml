/// @description Insert description here
// You can write your code in this editor

image_xscale = 8;
image_yscale = 8;
x -= 64
y -= 64

jobDone = false; 

splatVis = 0;

instance_create_layer(128, 64, "Plate", oPlate);
splat1 = instance_create_layer(160+random_range(-20, 16), 
						  90+random_range(-12, 16), 
						  "Splatter", 
						  oSplatter, {image_index:1, image_angle: random_range(0,90)});
splat2 = instance_create_layer(160+random_range(-8, 20), 
						  90+random_range(-8, 16), 
						  "Splatter", 
						  oSplatter, {image_index:2, image_angle: random_range(0,90)});
splat3 = instance_create_layer(160+random_range(-20, 12), 
						  90+random_range(-16, 16), 
						  "Splatter", 
						  oSplatter, {image_angle: random_range(0,90)});

instance_create_layer(120, 90, "Sponge", oSponge);


