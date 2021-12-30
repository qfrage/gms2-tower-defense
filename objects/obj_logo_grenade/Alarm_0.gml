/// @description reloading
if(global.grenade_cooldown){
	image_index++;
	if(image_index == 3){
		global.grenade_cooldown = false;
		return;
	}
	alarm[0] = global.grenade_cooldown_speed;
}
