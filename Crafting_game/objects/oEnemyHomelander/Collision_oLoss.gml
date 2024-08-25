/*if(global.life == 2 || global.life == 3){
    global.life = 1;
    global.coins = 100;
    instance_destroy();
}

else if(global.life == 1){
    room_goto(rmEnd);
    instance_destroy();
}*/

instance_destroy();
global.life -= 1;
if (global.coins >= 150) {
    global.coins -= 150;
} else {
    global.coins = 0;
}
