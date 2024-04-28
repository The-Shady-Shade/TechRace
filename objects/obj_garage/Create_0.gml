items = ds_list_create();
ds_list_add(items, ["Gun", 12500, "Press Space to destroy obstacles on your way!\nCooldown: 10 seconds."]);
//ds_list_add(items, ["Engine", 1000, "Be faster!"]);
//ds_list_add(items, ["Nitro", 2500, "Crash obstacles on your way!"])

item_count = ds_list_size(items);

selected = 0;
selected_anim = 0;

gui_w = 1920;
gui_h = 1080;

menu_w = gui_w * 0.3;
margin = gui_w * 0.1;

preview_w = (gui_w - (menu_w - margin));

audio_play_sound(snd_garage, 1, 1);