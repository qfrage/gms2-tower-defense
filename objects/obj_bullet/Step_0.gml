if(distance_to_point(obj_weapon.x,obj_weapon.y) > global.weapon_range[global.weapon_level]){//Если пуля пролетела больше за ренджу атаки - дестрой пули
	instance_destroy();
	show_debug_message("Пулька достигла ренджа атаки");
}
if(x < 0 || x > room_width || y < 0 || y > room_height){//Если пуля пролетела границы карты - дестрой пули
	instance_destroy();
	show_debug_message("Пулька вылетела за границы карты и была удалена");
}
