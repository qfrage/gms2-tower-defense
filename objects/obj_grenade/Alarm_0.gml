sprite_index = spr_grenade_explosion;
audio_play_sound(snd_grenade,1,0);

with(obj_enemy){//Для каждого врага в радиусе гранаты
	dist = point_distance(x,y,obj_grenade.x,obj_grenade.y);
	damage = global.grenade_damage-round(dist/5);
	if(dist <= other.radius){
		show_debug_message(damage);
		if(hp-damage <= 0) instance_destroy();
		else{ 
			hp -= damage;
			if(dist < global.grenade_radius div 2) bleeding = true;
		}
	}
}


alarm[1] = 15;