if (hp <= 0) {
    instance_destroy();
	audio_play_sound(snd_building_dead, 1, false);
}

var nearest_enemies = find_nearest_enemies(range);
