if (global.moving){
	if (place_meeting(x, y+450, obj_wall)) && (!place_meeting(side*45, y, obj_border)){
		if (side == 1) && (image_angle < 300){
			image_angle += 3;
		}
		
		if (side == -1) && (image_angle > 240){
			image_angle -= 3;
		}
	} else {
		if (image_angle > angle){
			image_angle -= 3;
		}
	
		if (image_angle < angle){
			image_angle += 3;
		}
	}

	motion_set(image_angle, global.spd*1.5);
} else {
	motion_set(image_angle, 0);
}

#region Collision
if (place_meeting(x, y, obj_bullet)){
	with (obj_bullet){
		instance_destroy();
	}
	instance_destroy();
}
#endregion