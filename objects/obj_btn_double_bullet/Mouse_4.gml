if !global.double_bullet{//Если неактивный
	sprite_index = spr_btn_double_bullet_act 
	global.double_bullet = true;
}
else{//если активный
	sprite_index = spr_btn_double_bullet_deact;
	global.double_bullet = false;
}