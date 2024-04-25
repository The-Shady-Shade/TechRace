gui_w = display_get_gui_width();
gui_h = display_get_gui_height();
gui_w_half = gui_w * 0.5;
gui_h_half = gui_h * 0.5;

gui_margin = 32;

menu_x = gui_w  + 200;
menu_y = gui_h - gui_margin;
menu_x_target = gui_w - gui_margin;

menu_speed = 25;

menu_font = fnt_neon_sans;
menu_item_h = font_get_size(menu_font);

gun = spr_gun;
menu[0] = gun;

menu_item = menu[0]
menu_items = array_length(menu);

menu_cursor = 2;

menu_top = menu_y - ((menu_item_h * 1.5) * menu_items);

menu_item_created = false;

audio_play_sound(snd_garage, 1, 1);