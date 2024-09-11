if (hp <= 0) {
	audio_play_sound(snd_ghost_death, 1, false);
    instance_destroy();
}

// spikes

if (!place_meeting(x, y, oSpikes)) {
    in_contact_with_spikes = false;
}
