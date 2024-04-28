draw_set_color(c_black);
draw_set_alpha(0.5);
draw_rectangle(20, gui_h_half-100, gui_w-20, gui_h_half+75, 0);
draw_set_alpha(1);

draw_set_text(fnt_silver, c_white, fa_center, fa_middle);
draw_text(gui_w_half, gui_h_half, "Game made by ShadyShade\nThanks to the " + creators + " for the assets.");