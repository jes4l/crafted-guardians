var screen_width = display_get_gui_width();
var screen_height = display_get_gui_height();

draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(fntGUI_small);
draw_text(screen_width/2, screen_height/2 - 90, "Mine Objects Using the Pickaxe");
draw_text(screen_width/2, screen_height/2 - 70, "Collect Materials that drop");
draw_text(screen_width/2, screen_height/2 - 50, "Build Towers Using the Materials");
draw_text(screen_width/2, screen_height/2 - 30, "Destroy the Enemies");
draw_text(screen_width/2, screen_height/2 - 10, "Destroy the Boss and unlock the key");
draw_text(screen_width/2, screen_height/2 - -10, "Use the Keys to Unlock gates to Complete the game");
draw_set_font(-1);
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
