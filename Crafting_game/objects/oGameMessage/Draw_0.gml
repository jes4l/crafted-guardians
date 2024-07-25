// Draw event
draw_set_color(c_black); // Set the color to black

// Calculate the dimensions of the message
draw_set_font(font); // Set the font to your custom font for the message
var message_width = string_width(message); // Get the width of the message text
var message_height = string_height(message); // Get the height of the message text

// Draw the message
if (message_visible) {
    draw_text(x, y, message); // Draw the message
}

// Draw the countdown timer if it's visible
if (timer_visible) {
    draw_set_font(font_timer); // Set the font to your larger custom font for the timer
    var timer_width = string_width(string(global.countdown)); // Get the width of the timer text
    var timer_height = string_height(string(global.countdown)); // Get the height of the timer text
    
    // Calculate the center position for the timer text
    var center_x = x + (message_width - timer_width) / 2;
    var center_y = y + (message_height - timer_height) / 2;
    
    draw_text(center_x, center_y, string(global.countdown)); // Draw the countdown timer centered in the message
}
