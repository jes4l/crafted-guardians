instance_destroy();
global.life -= 1;
if (global.coins >= 150) {
    global.coins -= 150;
} else {
    global.coins = 0;
}
