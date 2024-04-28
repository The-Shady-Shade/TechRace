if (global.moving){
	draw_set_text(fnt_silver, c_white, fa_left, fa_top);
	draw_text(32, 32, "Score: " + string(global.score_race));
	draw_text(32, 96, "Record: " + string(global.record));
}