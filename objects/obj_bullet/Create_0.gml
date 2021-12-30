audio_play_sound(snd_shot,1,0);//Звук выстрела
strength = 0;//Сила(0-100)
sp = room_speed*0.5;//Скорость полета пули
xx = 0;//х конечная
yy = 0;//у конечная
if(global.burning_upgrade) sprite_index = spr_burning_bullet else sprite_index = spr_bullet;//если апгрейд на горящие пули, то рисуем горящий спрайт

