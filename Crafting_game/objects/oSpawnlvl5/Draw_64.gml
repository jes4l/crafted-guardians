draw_set_font(fntGUI);
var coin_x = 10;
var coin_y = 10;
var coin_text_x = coin_x + 20;

// Adjust coin_x and coin_y for middle-center anchor point
var coin_width = sprite_get_width(sCoin);
var coin_height = sprite_get_height(sCoin);
coin_x += coin_width / 2;
coin_y += coin_height / 2;

draw_set_color(c_black);
draw_sprite(sCoin, 0, coin_x, coin_y);
draw_text(coin_text_x, coin_y - coin_height / 2, string(global.coins));

draw_text(10, 30, "Lvl: " + string(global.level));
draw_set_color(c_white);

var heart_x = 10;
var heart_y = 50;
var heart_spacing = 20;

for (var i = 0; i < global.life; i++) {
    draw_sprite(sHeart, 0, heart_x + i * heart_spacing, heart_y);
}

// Display countdown
if (global.countdown > 0) {
    draw_set_font(fntGUI_large);
    draw_text(210, 70, string(global.countdown));
    draw_set_font(-1);
}

draw_set_font(-1);
