function kill_player(){
	with (obj_player){
		moving = false;
		motion_set(image_angle, 0);
	} 
	
	// shake_screen(10, 60);
	
	draw_set_text(fnt_neon_sans, c_red, fa_center, fa_middle);
	draw_text(RES_W*0.5, RES_H*0.5, "Press R to restart.\nScore: " + string(global.score_race) + "\nMoney: " + string(global.score));
}