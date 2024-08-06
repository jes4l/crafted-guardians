if(global.life == 2 || global.life == 3){
    global.life = 1;
    global.coins = 100;
    instance_destroy();
}

else if(global.life == 1){
    room_goto(rmEnd);
    instance_destroy();
}