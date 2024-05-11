#macro SAVEFILE "Save.sav"

#macro RES_W 1920
#macro RES_H 1080
display_set_gui_size(RES_W, RES_H);
surface_resize(application_surface, RES_W, RES_H);

window_mouse_set_locked(true);
display_mouse_set(RES_W, RES_H);

save_read();

global.score_race = 0;
global.alive = true;