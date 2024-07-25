/// @description Insert description here
// You can write your code in this editor
// In the Draw GUI event of your object



var screen_width = display_get_gui_width();
var screen_height = display_get_gui_height();

// Set the font size to a smaller value

draw_set_color(c_black);
draw_set_halign(fa_left);
draw_set_valign(fa_bottom);
draw_set_font(fntGUI);

// Display sWood sprite at the bottom left
draw_sprite(sWood, 0, 10, screen_height - 20);

// Display Wood at the bottom left
draw_text(5, screen_height, string(global.inventoryWood));

draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
audio_stop_all();

