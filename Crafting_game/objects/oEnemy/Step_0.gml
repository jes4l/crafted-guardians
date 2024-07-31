if (hp <= 0) {
    instance_destroy();
}

if(global.life <= 0) {
    if (alarm[0] == -1) {
        alarm[0] = 30;
    }
}