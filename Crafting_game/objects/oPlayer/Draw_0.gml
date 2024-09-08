// In oPlayer Draw event


draw_self();

if (message != "") {
    var text_width = string_width(message);
    var player_width = sprite_get_width(sprite_index);
    var player_height = sprite_get_height(sprite_index);
    var text_x = x - (text_width / 2);
    var text_y = y - player_height / 2 - 20; // Adjust the offset as needed
    draw_text(text_x, text_y, message);
    show_debug_message("Drawing message: " + message);
}


event_inherited();
draw_self();

// Draw the health bar
var bar_width = 15;
var bar_height = 2;
var bar_x = x - bar_width / 2;
var bar_y = y - 23;

// Calculate the width of the filled part of the health bar
var filled_width = (hp / max_hp) * bar_width;

// Draw the black outline of the health bar
draw_set_color(c_black);
draw_rectangle(bar_x - 1, bar_y - 1, bar_x + bar_width + 1, bar_y + bar_height + 1, false);

// Draw the filled part of the health bar
draw_set_color(c_green);
draw_rectangle(bar_x, bar_y, bar_x + filled_width, bar_y + bar_height, false);

// Draw the background of the health bar
if (hp < max_hp) {
    draw_set_color(c_red);
    draw_rectangle(bar_x + filled_width, bar_y, bar_x + bar_width, bar_y + bar_height, false);
}
draw_set_color(-1);
