original_speed = global.spd_boss; // Store the original speed
path_start(Path1, global.spd_boss, 0, 1);
hp = global.hp_boss;
max_hp = global.hp_boss;

range = 120;
fire_rate = room_speed / 5;
shooting = false;
objectToShoot = noone;

audio_play_sound(snd_TonyClarkHades, 1, false);


stored_position = 0;
