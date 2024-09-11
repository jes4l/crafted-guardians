global.inventory[# 2, 0] += 2;//cost_stone;
global.inventory[# 3, 0] += 3;//cost_titanium;
global.coins += 75;
audio_play_sound(snd_finance, 1, false);
instance_destroy();