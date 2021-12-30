/// @description таймер ломать базу
if(global.base_health - global.enemy_damage[level] <= 0){
	restart_level();//Перезапускаем уровень
	return;
}
if(!attacking) attacking = true;
if(obj_wall.sprite_index != spr_wall_damaged && global.base_health - damage <= global.health_damaged_wall)
	obj_wall.sprite_index = spr_wall_damaged;
audio_play_sound(snd_wall_destroy,1,0);
global.base_health -= global.enemy_damage[level];
alarm[1] = global.enemy_attack_speed[level];