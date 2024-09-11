// Increment the image index
image_index += 1;
audio_play_sound(snd_egg, 1, false);
// Check if the frame is at the maximum (6)
if (image_index >= 8) {
    // Destroy the egg object
    instance_destroy();
} else {
    // Spawn objects based on image_index
    if (image_index == 1) {
        instance_create_layer(x, y, "Instances_1", oE1);
		with (oE1) {
		path_start(Path3, 1, path_action_restart, true);
		audio_play_sound(snd_AmberSwarbrickAHHHHH, 1, false);
		}
    } else if (image_index == 2) {
        instance_create_layer(x, y, "Instances_1", oE2);
		with (oE2) {
		path_start(Path4, 1.2, path_action_restart, true);
		audio_play_sound(snd_TonyClarkHades, 1, false);	
		}
    } else if (image_index == 3) {
        instance_create_layer(x, y, "Instances_1", oE3);
		with (oE3) {
		path_start(Path5, 1.4, path_action_restart, true);
		audio_play_sound(snd_ghost_death, 1, false);
	}
    } else if (image_index == 4) {
        instance_create_layer(x, y, "Instances_1", oE4);
		with (oE4) {
		path_start(Path6, 1.6, path_action_restart, true);
		audio_play_sound(snd_screams_of_agony, 1, false);
	}
    }
}

