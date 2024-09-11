var screen_width = display_get_gui_width();
var screen_height = display_get_gui_height();
var scale = 1;
var offset = 20;

var coin_width = sprite_get_width(sCoin);
var coin_height = sprite_get_height(sCoin);

var text_height = 14;

var prev_font = draw_get_font();
var prev_color = draw_get_color();
var prev_halign = draw_get_halign();
var prev_valign = draw_get_valign();

draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(fntGUI_large);

draw_text(offset, 20, "You Win");

draw_set_font(fntGUI_small);

draw_text(offset, 60, global.name + "!");
draw_text(offset, 90, "Well Done for Vanquishing the Ghosts");

var base_y = 115;
var coin_y = base_y + 4;
var text_y = coin_y + (coin_height - text_height) / 2 - 8;

draw_sprite(sCoin, 0, offset + 5, coin_y);
draw_text(offset + 20, text_y, string(global.coins));

draw_text(offset, coin_y + coin_height - 5, "level: " + string(global.level));

draw_set_font(-1);
draw_set_color(-1);
