/*
if(hp-obj_bullet.strength <= 0){
	global.money += round(global.award);
	instance_destroy();
	show_debug_message("Попал, убил");
	global.kills_counter++;
	if(global.kills_counter % 2 == 0){
		global.money += random_range(30,50);
		random_sound = random_range(0,3);
		random_sound_index = asset_get_index(global.snd_award_array[random_sound]);
		audio_play_sound(random_sound_index,1,0);
	}
}
else{
	hp -=  obj_bullet.strength;
	show_debug_message("Попал, но не убил");
}