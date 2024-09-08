instance_destroy();
global.life -= 1;
if (global.coins >= 60) {
    global.coins -= 60;
} else {
    global.coins = 0;
}
