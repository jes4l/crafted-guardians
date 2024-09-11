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

// Set color to black for "You Lose" text
draw_set_color(c_black);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(fntGUI_large);

draw_text(offset, 20, "You Win");

// Set color to grey for global.name
draw_set_color(c_black);
draw_set_font(fntGUI_small);

draw_text(offset, 60, global.name + "!");

// Set color back to white for the rest of the text
draw_set_color(c_white);
draw_text(offset, 90, "Congratulations");

var base_y = 115;
var coin_y = base_y + 4;
var text_y = coin_y + (coin_height - text_height) / 2 - 8;

draw_sprite(sCoin, 0, offset + 5, coin_y);
draw_text(offset + 20, text_y, "Coins before: " + string(global.coins_before_conversion));

var coin_y_after = coin_y + coin_height + 10;
var text_y_after = coin_y_after + (coin_height - text_height) / 2 - 8;

draw_sprite(sCoin, 0, offset + 5, coin_y_after);
draw_text(offset + 20, text_y_after, "Coins after: " + string(global.coins));

draw_text(offset, coin_y_after + coin_height + 5, "level: " + string(global.level));

// Restore previous drawing settings
draw_set_font(prev_font);
draw_set_color(prev_color);
draw_set_halign(prev_halign);
draw_set_valign(prev_valign);
