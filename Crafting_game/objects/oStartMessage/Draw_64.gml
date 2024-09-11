// Draw GUI Event
var screen_width = display_get_gui_width();
var screen_height = display_get_gui_height();
var left_half_width = screen_width / 2;
var scale = 0.7;  // Adjust the scale as needed
var offset = 70;  // Adjust this value to move the text to the left

draw_set_color(c_white);
draw_set_halign(fa_left);  // Align text to the left
draw_set_valign(fa_middle);
draw_set_font(fntGUI_small);

draw_text_transformed(left_half_width / 2 - offset, screen_height / 2 - 80, "Mine objects using the Pickaxe (bottom right)", scale, scale, 0);
draw_text_transformed(left_half_width / 2 - offset, screen_height / 2 - 70, "Collect materials that drop (top right)", scale, scale, 0);
draw_text_transformed(left_half_width / 2 - offset, screen_height / 2 - 60, "Hover over Towers and Craftables to see cost", scale, scale, 0);
draw_text_transformed(left_half_width / 2 - offset, screen_height / 2 - 50, "Build Towers from shops using the materials", scale, scale, 0);
draw_text_transformed(left_half_width / 2 - offset, screen_height / 2 - 40, "To cancel Tower or Craftable placement, press C and press E to put it in inventory", scale, scale, 0);
draw_text_transformed(left_half_width / 2 - offset, screen_height / 2 - 30, "Health, Lives, and Water Shield (Q and R for rotating controls) are non-refundable", scale, scale, 0);
draw_text_transformed(left_half_width / 2 - offset, screen_height / 2 - 20, "Destroy the enemies by placing Towers and Craftables", scale, scale, 0);
draw_text_transformed(left_half_width / 2 - offset, screen_height / 2 - 10, "When placing an item, it should be in its original color to be placed", scale, scale, 0);
draw_text_transformed(left_half_width / 2 - offset, screen_height / 2 - 0, "Destroy the Red Ghosts to unlock keys and use them to unlock gates", scale, scale, 0);
draw_text_transformed(left_half_width / 2 - offset, screen_height / 2 + 10, "Find the Phoenix Pickaxe to destroy the castle", scale, scale, 0);
draw_text_transformed(left_half_width / 2 - offset, screen_height / 2 + 20, "At the final level, the floor is lava", scale, scale, 0);
draw_text_transformed(left_half_width / 2 - offset, screen_height / 2 + 30, "Inventory Items are converted to 5 coins, added to total coins at the end", scale, scale, 0);
draw_text_transformed(left_half_width / 2 - offset, screen_height / 2 + 40, "The Green Ghost cannot shoot; every other ghost can", scale, scale, 0);
draw_text_transformed(left_half_width / 2 - offset, screen_height / 2 + 50, "The Red and Blue Ghosts can destroy Towers", scale, scale, 0);
draw_text_transformed(left_half_width / 2 - offset, screen_height / 2 + 60, "Pink Ghosts can revive dead ghosts from previous levels and can target you", scale, scale, 0);
draw_text_transformed(left_half_width / 2 - offset, screen_height / 2 + 70, "Pink Ghosts can only take damage through the Pickaxe and Spikes", scale, scale, 0);
draw_text_transformed(left_half_width / 2 - offset, screen_height / 2 + 80, "To use Cave, Place Player on Cave and Press the UP key", scale, scale, 0);
draw_text_transformed(left_half_width / 2 - offset, screen_height / 2 + 90, "F to Full Screen ESC to Quit", scale, scale, 0);

draw_set_font(-1);
draw_set_color(-1);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
