menu_x += (menu_x_target - menu_x) / menu_speed;

if (menu_control){
	
	if (keyboard_check_pressed(vk_up)){
		menu_cursor++;
		if (menu_cursor >= menu_items){menu_cursor = 0;}
		audio_play_sound(snd_choose, 5, 0);
	}
	
	if (keyboard_check_pressed(vk_down)){
		menu_cursor--;
		if (menu_cursor < 0){menu_cursor = menu_items - 1;}
		audio_play_sound(snd_choose, 5, 0);
	}
	
	if (keyboard_check_pressed(vk_enter)){
		menu_x_target = gui_w + 200;
		menu_commited = menu_cursor;
		shake_screen(4, 30);
		menu_control = false;
		
		audio_play_sound(snd_confirm, 10, 0);
		audio_stop_sound(snd_menu);
	}
	
	#region Mouse Control
	/*
	var mouse_y_gui = device_mouse_y_to_gui(0);
	var mouse_x_gui = device_mouse_x_to_gui(0);
	
	if (mouse_y_gui < menu_y) && (mouse_y_gui > menu_top) && (mouse_x_gui >= menu_x-175) && (mouse_x_gui <= menu_x+5){
		menu_cursor = (menu_y -mouse_y_gui) div (menu_item_h * 1.5);
		
		if (mouse_check_button_pressed(mb_left)){
			menu_x_target = gui_w + 200;
			menu_commited = menu_cursor;
			shake_screen(4, 30);
			menu_control = false;
			
			audio_play_sound(snd_confirm, 10, 0);
			audio_stop_sound(snd_menu);
		}
	}
	*/
	#endregion
	
}

if (menu_x > gui_w+150) && (menu_commited != - 1){
	switch(menu_commited){
		case 2: transition(TRANS_MODE.GOTO, rm_endless); break;
		case 1: transition(TRANS_MODE.GOTO, rm_garage); break;
		case 0: game_end(); break;
	}
}