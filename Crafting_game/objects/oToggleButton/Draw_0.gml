// Draw Event
draw_set_color(c_gray);
draw_rectangle(x1, y1, x2, y2, false);
draw_set_color(c_white);
draw_rectangle(x1, y1, x2, y2, true);
draw_set_font(fntGUI_small);

// Draw the button text
var button_text = button_state;
var text_width = string_width(button_text);
var text_x = (x1 + x2) / 2 - text_width / 2;
var text_y = (y1 + y2) / 2 - string_height(button_text) / 2;
draw_text(text_x, text_y, button_text);

// Draw the instruction text above the button
var instruction_text = "Select your character and click on the book!";
var instruction_text_width = string_width(instruction_text);
var instruction_text_x = (room_width - instruction_text_width) / 2;
draw_text(instruction_text_x, y1 - 30, instruction_text);

// Change cursor when hovering over the button
if (point_in_rectangle(mouse_x, mouse_y, x1, y1, x2, y2)) {
    window_set_cursor(cr_handpoint);
    show_debug_message("Cursor over button.");
} else {
    window_set_cursor(cr_default);
    show_debug_message("Cursor not over button.");
}

draw_set_color(-1);
draw_set_font(-1);
