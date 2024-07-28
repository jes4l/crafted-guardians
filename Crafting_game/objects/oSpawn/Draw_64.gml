/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_black);
draw_text(10,10,"Coins: " + string(global.coins));
draw_text(10,30,"Level: " + string(global.level));
draw_text(10,50,"Lives: " + string(global.life));
draw_text(10,70,"hp: " + string(global.hp));
draw_text(10,90,"spd: " + string(global.spd));
draw_set_color(c_white);