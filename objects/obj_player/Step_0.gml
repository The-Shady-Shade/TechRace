if (start) && (keyboard_check_pressed(ord("W"))){
	start = false;
	moving = true;
}

if (moving){
	layer_y("Background", layer_get_y("Background")+global.spd);
	
	#region Score
	global.score_race += global.spd * 0.1;
	global.score += global.spd * 0.1;
	global.score_race = round(global.score_race);
	global.score = round(global.score);
	#endregion
	
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
}