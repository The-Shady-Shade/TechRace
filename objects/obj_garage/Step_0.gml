if (!menu_item_created){
	with (layer_sprite_create("Assets", gui_w_half, gui_h_half, menu_item)){
		image_xscale = 10;
		image_yscale = 10;
	}
}

menu_x += (menu_x_target - menu_x) / menu_speed;

if (keyboard_check_pressed(vk_left)){
	menu_cursor--;
	if (menu_cursor >= menu_items){menu_cursor = 0;}
	//audio_play_sound(snd_menu_choose, 5, 0);
}

if (keyboard_check_pressed(vk_right)){
	menu_cursor++;
	if (menu_cursor > 0){menu_cursor = menu_items - 1;}
	//audio_play_sound(snd_menu_choose, 5, 0);
}

if (keyboard_check_pressed(vk_enter)){
	shake_screen(4, 30);
	audio_play_sound(snd_menu_confirm, 10, 0);
}

var mouse_y_gui = device_mouse_y_to_gui(0);
var mouse_x_gui = device_mouse_x_to_gui(0);

if (mouse_y_gui < menu_y) && (mouse_y_gui > menu_top) && (mouse_x_gui >= menu_x-175) && (mouse_x_gui <= menu_x+5){
	menu_cursor = (menu_y -mouse_y_gui) div (menu_item_h * 1.5);
	
	if (mouse_check_button_pressed(mb_left)){
		menu_x_target = gui_w + 200;
		menu_commited = menu_cursor;
		shake_screen(4, 30);
		
		audio_play_sound(snd_menu_confirm, 10, 0);
	}
