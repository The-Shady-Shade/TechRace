///@desc save_write(save)
///@arg save

function save_write(){
	//var file = argument[0];
	
	if (file_exists(SAVEFILE)){
		file_delete(SAVEFILE);
	}
	
	var file = file_text_open_write(SAVEFILE){
		file_text_write_real(file, real(global.score));
		file_text_write_real(file, real(global.record));
		file_text_write_real(file, real(global.has_gun));
		file_text_close(file);
	}
}