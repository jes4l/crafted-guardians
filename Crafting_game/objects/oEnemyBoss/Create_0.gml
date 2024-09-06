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

// Spikes
in_contact_with_spikes = false;

// Change colour shader
if (global.level == 5 || global.level == 6) {
    color_pink = true; // Set a flag to indicate the color change
} else {
    color_pink = false;
}