if(global.life <= 0) {
    timer += 1;
    if(timer >= room_speed) { // If 1 second has passed
        room_goto(rmEnd);
    }
}