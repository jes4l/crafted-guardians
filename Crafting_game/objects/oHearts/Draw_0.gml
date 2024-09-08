// Draw the object itself
draw_self();

// Display the cost
CostDisplay(cost_wood, cost_stone, cost_key, cost_water, cost_titanium, cost_coin, cost_lightning, sprite_index);

// Call the default draw event to draw the object
event_inherited();

// Save the current font and alignment settings
var prev_font = draw_get_font();
var prev_halign = draw_get_halign();
var prev_valign = draw_get_valign();

// Set the font and alignment for oHealth
draw_set_font(fntGUI_smallest);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

// Draw the number of purchases left on top of the oHealth object
var offset_x = 7.7;
var offset_y = 10;
draw_text(x + offset_x, y - sprite_height / 3 - 10 + offset_y, string(3 - global.purchaseCountLife));

// Restore the previous font and alignment settings
draw_set_font(prev_font);
draw_set_halign(prev_halign);
draw_set_valign(prev_valign);
