// Draw GUI Event
var screen_width = display_get_gui_width();
var screen_height = display_get_gui_height();
var left_half_width = screen_width / 2;
var scale = 0.45;  // Adjust the scale as needed
var offset = 45;  // Adjust this value to move the text to the left

draw_set_color(c_black);
draw_set_halign(fa_left);  // Align text to the left
draw_set_valign(fa_middle);
draw_set_font(fntGUI_small);

draw_text_transformed(left_half_width / 2 - offset, screen_height / 2 - 80, "Mine Objects Using the Pickaxe", scale, scale, 0);
draw_text_transformed(left_half_width / 2 - offset, screen_height / 2 - 70, "Collect Materials that drop", scale, scale, 0);
draw_text_transformed(left_half_width / 2 - offset, screen_height / 2 - 60, "Build Towers from Shops Using the Materials", scale, scale, 0);
draw_text_transformed(left_half_width / 2 - offset, screen_height / 2 - 50, "Destroy the Enemies by Placing Towers", scale, scale, 0);
draw_text_transformed(left_half_width / 2 - offset, screen_height / 2 - 40, "Destroy the Blue Ghost and unlock keys", scale, scale, 0);
draw_text_transformed(left_half_width / 2 - offset, screen_height / 2 - 30, "Use the Keys to Unlock gates", scale, scale, 0);
draw_text_transformed(left_half_width / 2 - offset, screen_height / 2 - 20, "Find the Phoenix Pickaxe to Destroy the Castle", scale, scale, 0);

draw_set_font(-1);
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
