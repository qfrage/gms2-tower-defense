instance_destroy();

if(other.hp - strength <= 0){//Если попал и урона хватило
	instance_destroy(other);
	show_debug_message("Попал, убил");
	if(global.kills_counter % 2 == 0){
		global.money += round(random_range(30,50));
		random_sound = random_range(0,3);
		random_sound_index = asset_get_index(global.snd_award_array[random_sound]);
		audio_play_sound(random_sound_index,1,0);
	}
	if(global.money >= global.cost_upgrade_weapon) obj_upgrade_bullet.sprite_index = spr_bullet_upgrade_unlocked;
}else{//Если урона не хватило
	other.hp -=  strength;
	if(global.burning_upgrade){ 
		var fire = true;
		other.burning = fire;
	}
	show_debug_message("Попал, но не убил");
}