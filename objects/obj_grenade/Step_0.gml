if(point_distance(x,y,xx,yy) > sp){
	move_towards_point(xx,yy,sp)	
}
else{
	speed = 0;
	image_index = 0;
	if(alarm[0] < 0) alarm[0] = 30;
}