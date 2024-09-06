path_start(Path1, global.spd, 0, 1);
hp = global.hp;
max_hp = global.hp; 

// In the Create Event of the object (e.g., oEnemy)
stored_position = 0; // Initialize the stored_position variable

audio_play_sound(snd_AmberSwarbrickAHHHHH, 1, false);


// Spikes
in_contact_with_spikes = false;


// Change colour shader
if (global.level == 5 || global.level == 6) {
    color_pink = true; // Set a flag to indicate the color change
} else {
    color_pink = false;
}


