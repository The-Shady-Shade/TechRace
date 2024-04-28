image_angle = 90;
image_speed = 0;
image_index = 0;

if (global.has_gun){
	image_index = 1;
}

start = true;
global.moving = false;

main_spd = 15;
main_hsp = 8;

global.spd = main_spd;
hsp = main_hsp;
boost = 1.5;
slowdown = 0.5;

boosted = false;
slowed = false;

shot_cd = 0;

music = choose(snd_lounge, snd_follow, snd_embush);
audio_play_sound(music, 1, 1);