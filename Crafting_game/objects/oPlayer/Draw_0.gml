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
