#macro SAVEFILE "Save.sav"

gui_w = display_get_gui_width();
gui_h = display_get_gui_height();
gui_margin = 32;

menu_x = gui_w  + 200;
menu_y = gui_h - gui_margin;
menu_x_target = gui_w - gui_margin;

menu_speed = 25;

menu_font = fnt_neon_sans;
menu_item_h = font_get_size(menu_font);

menu_commited = -1;
menu_control = true;

menu[2] = "Play";
menu[1] = "Garage";
menu[0] = "Quit";

menu_items = array_length(menu);
menu_cursor = 2;

menu_top = menu_y - ((menu_item_h * 1.5) * menu_items);

snd_alarm = 0;

//audio_play_sound(snd_menu, 1, 1);