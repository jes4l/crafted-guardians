with (other) {
    if (!in_contact_with_spikes_lava) {
        hp -= 20; 
        in_contact_with_spikes_lava = true; 
		audio_play_sound(snd_lava, 1, false);
    }
}
if (!collision_processed_lava) {
    hp -= 20; 
    collision_processed_lava = true; 
}