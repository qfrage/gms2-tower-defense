/// @description если горим - дамаг каждую секу
if(bleeding){
	sprite_index = global.enemy_bleeding_sprite[level];	
	damage = round(random_range(global.bleeding_damage-5,global.bleeding_damage));
	if(hp-damage <= 0) return instance_destroy();
	hp-=damage;
}
if(burning){
	sprite_index = global.enemy_burning_sprite[level];
	damage = round(random_range(global.fire_damage-15,global.fire_damage));
	if(hp-damage <= 0) return instance_destroy();
	hp-=damage;
}

alarm[0] = room_speed;
