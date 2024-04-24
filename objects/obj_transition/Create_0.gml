w = display_get_gui_width();
h = display_get_gui_height();

w_half = w * 0.5;
h_half = h * 0.5;

enum TRANS_MODE{
	OFF,
	GOTO,
	NEXT,
	RESTART,
	INTRO
}

mode = TRANS_MODE.INTRO;
target = room;
percent = 1;
time = 1.2