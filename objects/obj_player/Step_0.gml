if (start) && (keyboard_check_pressed(ord("W"))){
	start = false;
	global.moving = true;
}

if (global.moving){
	layer_y("Background", layer_get_y("Background")+global.spd);
	
	if (place_meeting(x, y, obj_wall)) || (place_meeting(x, y, obj_car)) && (global.alive = true){
		kill_player();
	}
	
	#region Score
	global.score_race += global.spd * 0.1;
	global.score += global.spd * 0.1;
	global.score_race = round(global.score_race);
	global.score = round(global.score);
	if (global.record <= global.score_race){
		global.record = global.score_race;
	}
	#endregion

	#region Movenment
	var left = keyboard_check(ord("A"));
	var right = keyboard_check(ord("D"));
	var forward = keyboard_check(ord("W"));
	var backward = keyboard_check(ord("S"));
	
	var h_move = right - left;
	
	if (!place_meeting(x, y, obj_border_player)){
		x += h_move * hsp;
	}
	
	while(place_meeting(x+(h_move*hsp), y, obj_border_player)){
		x -= h_move;
	}

	
	if (left) && (image_angle < 120){
		image_angle += 4;
	}
	
	if (right) && (image_angle > 60){
		image_angle -= 4;
	}
	
	
	if (!left) && (!right) && (image_angle < 90){
		image_angle += 4;
	}
	
	if (!left) && (!right) && (image_angle > 90){
		image_angle -= 4;
	}
	
	
	
	if (forward) && (!boosted) && (!slowed){
		global.spd *= boost;
		hsp *= boost;
		boosted = true;
	}
	if (backward) && (!slowed) && (!boosted){
		global.spd *= slowdown;
		hsp *= slowdown;
		slowed = true;
	}
	
	if (!forward) && (!backward){
		global.spd = main_spd;
		hsp = main_hsp;
		boosted = false;
		slowed = false;
	}
	#endregion
	
	#region Gun
	if (global.has_gun){
		if (keyboard_check_pressed(vk_space)) && (shot_cd == 0){
			if (image_angle == 90){
				instance_create_layer(x, y-96, "Bullets", obj_bullet);
			} else if (image_angle > 90){
				instance_create_layer(x-60, y-90, "Bullets", obj_bullet);
			} else if (image_angle < 90){
				instance_create_layer(x+60, y-90, "Bullets", obj_bullet);
			}
			shot_cd = 600;
		}
	}
	if (shot_cd > 0){
		shot_cd--;
	}
	#endregion
}