if (global.moving){
	y += global.spd * 0.75;
}

#region Collision
if (place_meeting(x, y, obj_bullet)){
	with (obj_bullet){
		instance_destroy();
	}
	instance_destroy();
}
#endregion