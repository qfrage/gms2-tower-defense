if(global.grenade_cooldown) return show_debug_message("Гранат нет!");
global.grenade_cooldown = true;
obj_logo_grenade.image_index = 0;
obj_logo_grenade.alarm[0] = global.grenade_cooldown_speed;//перезарядка гранаты
instance_create_depth(x,y,-9,obj_grenade);
