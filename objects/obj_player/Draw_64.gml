if (place_meeting(x, y, obj_wall)) || (place_meeting(x, y, obj_car)){
	draw_set_text(fnt_silver, c_white, fa_center, fa_middle);
	draw_text(RES_W*0.5, RES_H*0.5, "Press R to restart.\nScore: " + string(global.score_race) + "\nRecord: " + string(global.record) + "\nMoney: " + string(global.score));
}

if (global.moving){
	draw_set_text(fnt_silver, c_white, fa_left, fa_top);
	draw_text(32, 32, "Score: " + string(global.score_race));
	draw_text(32, 96, "Record: " + string(global.record));
}