//pause/menu
//мб новые пушки


randomise();
//Изменяемые переменные(Обнуляются при перезапуске в скрипте)
global.weapon_level = 0;//уровень апгрейда ренжа пушки(0-2)
global.money = 0;
global.kills_counter = 0;
global.base_health = 1000;
global.burning_upgrade = false;//куплен ли апгрейд?
global.double_bullet = false;
global.grenade_cooldown = false;//можно ли кинуть гранату?
global.restart = false;



//Гранаты
global.grenade_cooldown_speed = room_speed*8;//Скорость КД гранаты на 1 секцию(всего 4)
global.grenade_speed = 10;
global.grenade_damage = 150;
global.grenade_radius = 300;


//постоянный дамаг
global.fire_damage = 30;//Максимальный дамаг огня
global.bleeding_damage = 10;//Максимальный дамаг кровотечения

global.value_base_heal = 200;//сколь хп давать за покупку сердечка
global.health_damaged_wall = 600;//Со скольки хп будет менятся спрайт стенки на разбитую
//стоимость апгрейдов
global.cost_base_heal = 500;//стоимость хилки стенки
global.cost_upgrade_weapon = 70;//стоимость на огненные пули
global.cost_upgrade_weapon_range = [100,250,500];//увеличить ренж атаки
global.cost_double_bullet_upgrade = 50;

global.weapon_range = [500,650,900,1200];//ренж атаки пушки 

//Настройки мобов для каждой сложности(1-3лвл)
global.enemy_attack_speed = [room_speed*4,room_speed*3,room_speed*2];//интервал атаки по забору
global.enemy_speed = [3,2,1];//speed
global.enemy_health = [100,200,600];//hp
global.enemy_damage = [20,40,100];//урон по забору
global.enemy_sprite = [spr_enemy_low,spr_enemy_med,spr_enemy_hard];//спрайты врагов
global.enemy_award = [30,50,80];//Награда за каждый лвл врага
global.enemy_respawn_delay = [room_speed*3,room_speed*7,room_speed*15];//Интервал появления врагов

//Звуки за каждого четного врага
global.snd_award_array = ["snd_award1","snd_award2","snd_award3","snd_award4"];

//=====================спрайты================================
//горящие враги
global.enemy_burning_sprite = [spr_burning_enemy_low, spr_burning_enemy_med, spr_burning_enemy_hard];
//кровотечение врагов
global.enemy_bleeding_sprite = [spr_bleeding_enemy_low,spr_bleeding_enemy_med,spr_bleeding_enemy_hard];