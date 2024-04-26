selected_anim = lerp(selected_anim, selected, 0.1);

if (keyboard_check_pressed(vk_down)){
	selected++;
	if (selected == item_count){selected = 0;}
}

if (keyboard_check_pressed(vk_up)){
	selected--;
	if (selected < 0){selected = item_count-1;}
}

var arr = items[| selected];
var item = arr[0];
var price = arr[1];

if (keyboard_check_pressed(vk_enter)) && (global.score >= price) && (selected = 0) && (global.has_gun = 0){
	global.has_gun = 1;
	global.score -= price;
	save_write();
}