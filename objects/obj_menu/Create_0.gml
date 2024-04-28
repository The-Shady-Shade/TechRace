gui_w = display_get_gui_width();
gui_h = display_get_gui_height();
gui_margin = 32;

menu_x = gui_w  + 220;
menu_y = (gui_h - gui_margin) + 32;
menu_x_target = gui_w - gui_margin;

menu_speed = 25;

menu_font = fnt_silver;
menu_item_h = font_get_size(menu_font);

menu_commited = -1;
menu_control = true;

menu[3] = "Play";
menu[2] = "Garage";
menu[1] = "Credits";
menu[0] = "Quit";

menu_items = array_length(menu);
menu_cursor = 3;

menu_top = menu_y - ((menu_item_h * 1.5) * menu_items);

snd_alarm = 0;

audio_play_sound(snd_menu, 1, 1);