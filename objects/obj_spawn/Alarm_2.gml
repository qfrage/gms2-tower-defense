/// @description спавним сложных мобов
var enemy_id = instance_create_layer(xx,yy,"instances",obj_enemy);
enemy_id.level = 2;
with(enemy_id){
	event_user(1);	
}
alarm[2] = global.enemy_respawn_delay[2];
