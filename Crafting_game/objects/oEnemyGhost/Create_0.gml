original_speed = global.spd_ghost; // Store the original speed
path_start(Path2, global.spd_ghost, 0, 1);
hp = global.hp_ghost;
max_hp = global.hp_ghost;

range = 150;
fire_rate = room_speed / 1;
shooting = false;
objectToShoot = noone;


stored_position = 0;

// Spikes
in_contact_with_spikes = false;
