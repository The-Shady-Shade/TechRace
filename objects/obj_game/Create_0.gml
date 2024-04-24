#macro RES_W 1920
#macro RES_H 1080

display_set_gui_size(RES_W, RES_H);

global.score = 0;
global.score_race = 0;

if (file_exists(SAVEFILE)){
	var file = file_text_open_read(SAVEFILE){
	global.score = file_text_read_real(file);
	file_text_close(file);
	}
}