if(global.money - global.cost_base_heal < 0) return show_debug_message("Недостаточно денег");
global.money -= global.cost_base_heal;
global.base_health += global.value_base_heal;