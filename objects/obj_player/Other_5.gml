if (file_exists(SAVEFILE)){
	file_delete(SAVEFILE);
}

var file = file_text_open_write(SAVEFILE){
	file_text_write_real(file, global.score);
	file_text_close(file);
}