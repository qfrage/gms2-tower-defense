function restart_level(){
	with(obj_enemy) instance_destroy();
	with(obj_grenade) instance_destroy();
	obj_wall.sprite_index = spr_wall;
	global.weapon_level = 0;//уровень апгрейда ренжа пушки(0-2)
	global.money = 0;
	global.kills_counter = 0;
	global.base_health = 1000;
	global.burning_upgrade = false;//куплен ли апгрейд?
	global.double_bullet = false;
	global.grenade_cooldown = false;
	global.restart = false;
	obj_logo_grenade.image_index = 3;
	room_restart();

	
}