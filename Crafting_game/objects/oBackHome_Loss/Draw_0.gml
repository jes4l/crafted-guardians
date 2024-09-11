// Draw Event
draw_set_color(c_gray);
draw_rectangle(x1, y1, x2, y2, false);
draw_set_color(c_white);
draw_rectangle(x1, y1, x2, y2, true);
draw_set_font(fntG);

// Draw "Play" text
var play_text = "Home";
var text_width = string_width(play_text);
var text_height = string_height(play_text);  // Get text height
var start_x = x1 + (box_width - text_width) / 2;  // Center text horizontally
var start_y = y1 + (box_height - text_height) / 2;  // Center text vertically
draw_text(start_x, start_y, play_text);
