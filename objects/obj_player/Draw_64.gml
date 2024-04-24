if (place_meeting(x, y, obj_wall)) || (place_meeting(x, y, obj_car)){
	kill_player();
}

draw_set_text(fnt_neon_sans, c_white, fa_left, fa_top);
draw_text(32, 32, "Score: " + string(global.score_race));