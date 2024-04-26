///@desc save_read(save)
///@arg save

function save_read(){
	//var file = argument[0];
	
	if (file_exists(SAVEFILE)){
		var file = file_text_open_read(SAVEFILE){
			global.score = file_text_read_real(file);
			global.has_gun = file_text_read_real(file);
			file_text_close(file);
		}
	} else {
		global.score = 0;
		global.has_gun = 0;
	}
}