selected_anim = lerp(selected_anim, selected, 0.1);

if (keyboard_check_pressed(vk_down)){
	selected++;
	if (selected == item_count){selected = 0;}
	audio_play_sound(snd_choose, 5, 0);
}

if (keyboard_check_pressed(vk_up)){
	selected--;
	if (selected < 0){selected = item_count-1;}
	audio_play_sound(snd_choose, 5, 0);
}

var arr = items[| selected];
var item = arr[0];
var price = arr[1];

if (keyboard_check_pressed(vk_enter)) && (global.score >= price) && (selected = 0) && (global.has_gun = 0){
	global.has_gun = 1;
	global.score -= price;
	save_write();
	audio_play_sound(snd_confirm, 10, 0);
} else if (keyboard_check_pressed(vk_enter)) && (global.score < price) && (selected = 0) || (keyboard_check_pressed(vk_enter)) && (global.hasgun == 1) && (selected = 0){
	audio_play_sound(snd_error, 10, 0);
}