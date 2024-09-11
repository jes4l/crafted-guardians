if (hp <= 0) {
	audio_play_sound(snd_screams_of_agony, 1, false);
    instance_destroy();
}

// spikes

if (!place_meeting(x, y, oSpikes)) {
    in_contact_with_spikes = false;
}
