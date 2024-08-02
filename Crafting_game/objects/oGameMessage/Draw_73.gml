/*// Draw event
draw_set_color(c_white); // Set the color to black

// Adjust the y position for the message
var message_y_offset = 75; // Offset to move the message lower
var timer_y_offset = 0; // Additional offset to move the timer lower

// Calculate the dimensions of the message
draw_set_font(font); // Set the font to your custom font for the message
var message_width = string_width(message); // Get the width of the message text
var message_height = string_height(message); // Get the height of the message text

// Draw the message
if (message_visible) {
    draw_text(x, y + message_y_offset, message); // Draw the message lower by the offset
}

// Draw the countdown timer if it's visible
if (timer_visible) {
    draw_set_font(font_timer); // Set the font to your smaller custom font for the timer
    var timer_width = string_width(string(global.countdown)); // Get the width of the timer text
    var timer_height = string_height(string(global.countdown)); // Get the height of the timer text
    
    // Calculate the new center position for the timer text
    var center_x = x + (message_width - timer_width) / 2;
    var center_y = y + message_height + message_y_offset + timer_y_offset; // Adjusted to position the timer further down
    
    draw_text(center_x, center_y, string(global.countdown)); // Draw the countdown timer centered below the message
    
    // Reset the font to the original font
    draw_set_font(font);
}
*/