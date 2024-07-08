/// @description Insert description here
// You can write your code in this editor


splatVis = splat1.image_alpha + splat2.image_alpha + splat3.image_alpha;

if splatVis <= 0 {

	oDoor.leaveAllowed = true; 
	instance_deactivate_object(oPlate);
	instance_deactivate_object(oSponge);
	instance_deactivate_object(oSplatter);
	instance_deactivate_object(self);
	instance_activate_object(oPlayer);
	instance_activate_object(oUIEInteract);
	
	
}
