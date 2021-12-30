poloska_pos = counter div 24;
image_angle = point_direction(x,y,mouse_x,mouse_y);

function double_shot(){
	global.money -= global.cost_double_bullet_upgrade;
	var bullet_id_first = instance_create_depth(x,y,-9,obj_bullet);
	var bullet_id_second = instance_create_depth(x,y-30,-9,obj_bullet);
	bullet_id_first.strength = counter;
	bullet_id_second.strength = counter;
	bullet_id_first.xx = mouse_x;
	bullet_id_first.yy = mouse_y;
	bullet_id_second.xx = mouse_x;
	bullet_id_second.yy = mouse_y-30;
	with(bullet_id_first){
		event_user(0);	
	}
	with(bullet_id_second){
		event_user(0);	
	}
}

function shot(){
	if(global.double_bullet && global.money >= global.cost_double_bullet_upgrade) return double_shot();
	var bullet_id = instance_create_depth(x,y,-9,obj_bullet);
	bullet_id.strength = counter;
	show_debug_message("Сила выстрела: " + string(counter));
	bullet_id.xx = mouse_x;
	bullet_id.yy = mouse_y;
	with(bullet_id){
		event_user(0);
	}
}


if(mouse_check_button_released(mb_left)){
	if(counter < 100 && counter > 0){
		show_debug_message("Стрельнул не на полную");
		shot();
		instance_destroy(obj_power);
		instance_destroy(obj_crosshair);
		flag_fire = false;
		flag_left_pressed = false;
		counter = 0;
	}else{
		flag_left_pressed = false;
		flag_fire = false;
		counter = 0;
	}
}


if(mouse_check_button(mb_left) && place_free(mouse_x,mouse_y)){
	if(!flag_left_pressed){//Если только начали зажимать, то выводим полоску один раз
		poloska = instance_create_depth(mouse_x,mouse_y-40,-9,obj_power);
		crosshair_id = instance_create_depth(mouse_x,mouse_y,-9,obj_crosshair);
		flag_left_pressed = true;
	}
	if(flag_left_pressed && !flag_fire){
		counter++;
		crosshair_id.x = mouse_x;
		crosshair_id.y = mouse_y;
		poloska.x = mouse_x;
		poloska.y = mouse_y-40;
		poloska.image_index = poloska_pos;
		if(counter >= 100){//Если достигли максимального значения силы
			instance_destroy(obj_power);
			instance_destroy(obj_crosshair);
			flag_fire = true;
			shot();
			counter = 0;
		}
	}
}





/*angle = point_direction(x,y,mouse_x,mouse_y);
image_angle = angle;
poloska_pos = counter div 24;

function shot(){
	var id_bullet = instance_create_depth(x,y,-9,obj_bullet);
	id_bullet.xx = mouse_x;
	id_bullet.yy = mouse_y;
	id_bullet.strength = counter;
	with(id_bullet){
		event_user(0);	
	}
}
if(mouse_check_button(mb_left) && !button_unpressed)
	if(flag == false){//Создаем полоску
		poloska = instance_create_depth(mouse_x,mouse_y,-9,obj_power);
		flag = true;//Включаем флаг, чтобы полоска больше не создавалась
	}
	else{//Проверяем дошли ли мы до конца полоски
		if(counter >= 100){// Если дошли, то тут стреляем
			button_unpressed = true;
			instance_destroy(poloska);
			shot();
			counter = 0;
		}
		//Если не дошли до конца, то прогрессируем
		show_debug_message("Poloska: " + string(poloska_pos));
		poloska.image_index = poloska_pos;
		poloska.x = mouse_x;
		poloska.y = mouse_y;
		counter++;
	}
if(mouse_check_button_released(mb_left)){//Если отпустили лкм
	if(!button_unpressed){
		shot();
		flag = false;
		instance_destroy(poloska);	
		button_unpressed = false;
	}
	if(button_unpressed) button_unpressed = false;
	flag = false;
	show_debug_message(counter);
	counter = 0;
}