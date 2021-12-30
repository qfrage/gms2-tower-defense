if(burning){//Если горим - запускаем таймер(дамаг каждую секунду)
	if(alarm[0] < 0) alarm[0] = 1;	
}

if(bleeding && !burning){
	if(alarm[0] < 0) alarm[0] = 1;	
}
if(distance_to_object(obj_wall) > 2)
	move_towards_point(target_x,target_y,sp);
else{
	if(alarm[1] < 0) alarm[1] = 60;
	speed = 0;
}