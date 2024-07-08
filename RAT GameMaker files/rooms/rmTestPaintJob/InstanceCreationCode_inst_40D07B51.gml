function doJob(){
	
	oUIEInteract.image_alpha = 0; 
	instance_deactivate_object(oPlayer); 
	instance_create_layer(96, 26, "Instances", oSprayPaintJob);
	//oPlayer.pSmoking = true; 
	//oPlayer.image_speed = 1; 
	//oPlayer.sprite_index = sprPlayerSmoking; 
	
}

