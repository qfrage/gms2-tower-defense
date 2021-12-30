//weapon_level(0-2) == array_length(1,3)
if(global.weapon_level + 1 ==  array_length(global.weapon_range)) return show_debug_message("Вы уже купили максимальное улучшение");
if(global.money - global.cost_upgrade_weapon_range[global.weapon_level] < 0) return show_debug_message("У Вас недостаточно денег");
global.money -= global.cost_upgrade_weapon_range[global.weapon_level];
global.weapon_level++;
show_debug_message("Ренж атаки прокачан до "+string(global.weapon_level)+" уровня");