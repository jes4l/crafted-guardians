// Step Event
if (hp <= 0) {
    audio_play_sound(snd_castle, 1, false);
    timer += 1;
    if (timer >= 2 * room_speed) { // If 2 seconds have passed
        room_goto(rmWin);
        instance_destroy();
    }
} else {
    timer = 0; // Reset the timer if hp is not 0
}
	
if(global.life <= 0) {
    timer += 1;
    if(timer >= room_speed) { // If 1 second has passed
        room_goto(rmEnd);
    }
}