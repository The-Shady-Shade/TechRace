function kill_player(){
	global.moving = false;
	global.alive = false;
	with (obj_player){
		motion_set(image_angle, 0);
		audio_stop_all();
		image_alpha = 0;
		instance_create_layer(x, y, "FX", obj_smoke);
		audio_play_sound(snd_death, 10, 0);
	}
	
	shake_screen(10, 60);
}