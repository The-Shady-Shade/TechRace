if (!global.alive){
	draw_set_text(fnt_silver, c_white, fa_center, fa_middle);
	draw_text(x, y, "Press R to restart.\nScore: " + string(global.score_race) + "\nRecord: " + string(global.record) + "\nMoney: " + string(global.score));
}