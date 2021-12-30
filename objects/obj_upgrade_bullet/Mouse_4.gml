//Если не хватает денег
if(global.money < global.cost_upgrade_weapon && !global.burning_upgrade) return show_debug_message("Недостаточно денег для покупки!");
if(global.burning_upgrade) return show_debug_message("Вы уже купили это улучшение!");
global.money -= global.cost_upgrade_weapon;
global.burning_upgrade = true;
sprite_index = spr_bullet_upgrade_purchased;
show_debug_message("Вы купили улучшение на горящие пули!");