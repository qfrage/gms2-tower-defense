draw_set_font(default_font);
draw_self();
draw_text(x+35,y-20,round(global.money));
draw_text(x+35,y+64,global.kills_counter);
draw_text(x+35,y+100,global.base_health);
draw_text(obj_upgrade_weapon_range.x,obj_upgrade_weapon_range.y,global.weapon_level);