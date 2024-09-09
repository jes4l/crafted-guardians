// Draw Event
draw_set_color(c_gray);
draw_rectangle(x1, y1, x2, y2, false);
draw_set_color(c_white);
draw_rectangle(x1, y1, x2, y2, true);
draw_set_font(fntGUI_small);

// Draw "Play" text
var play_text = "Play";
var text_width = string_width(play_text);
var start_x = (x1 + x2) / 2 - text_width / 2;
draw_text(start_x, y1 + 2, play_text);
