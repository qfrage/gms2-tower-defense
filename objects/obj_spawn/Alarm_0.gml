/// @description Спавним легких мобов
var enemy_id = instance_create_layer(xx,yy,"instances",obj_enemy);
enemy_id.level = 0;
with(enemy_id){
	event_user(1);	
}
alarm[0] = global.enemy_respawn_delay[0];