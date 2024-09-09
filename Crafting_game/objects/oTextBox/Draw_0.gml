
// Draw Event
// Set drawing color to grey for the background of the input box
draw_set_color(c_gray);

// Draw the filled rectangle (background) for the input box
draw_rectangle(x1, y1, x2, y2, false);  // Change "false" to "true" to make it filled

// Set drawing color to white for the outline and text
draw_set_color(c_white);

// Draw the outline of the input box
draw_rectangle(x1, y1, x2, y2, true);  // Draw an outline rectangle for the input box background

// Set the font to fntGUI_smallest
draw_set_font(fntGUI_largest);

// Draw the text (input + cursor)
var display_text = global.name;
if (writable) {
    display_text += cursor;  // Add the cursor if the box is writable
}

// If the user hasn't started typing, show placeholder text
if (string_length(global.name) == 0 && !writable) {
    draw_set_color(c_white);
    draw_text(x1 + 10, y1 + 10, "Enter your name...");  // Placeholder text
} else {
    // Draw the actual text and cursor if the user has started typing
    draw_text(x1 + 10, y1 + 10, display_text);  
}

// Draw the error message if needed
if (error_message != "") {
    draw_text(x1 + 10, y2 + 20, error_message);  // Display error message below the box
}

// Draw the invalid character message if needed
if (invalid_char_message != "") {
    draw_text(x1 + 10, y2 + 40, invalid_char_message);  // Display invalid character message below the box
}

// Reset the font to the original (default) font
draw_set_font(-1);  // -1 resets to the default font

// Change the mouse cursor depending on the position
if (point_in_rectangle(mouse_x, mouse_y, x1, y1, x2, y2)) {
    window_set_cursor(cr_beam);  // Change to text cursor when hovering over the box
} else {
    window_set_cursor(cr_default);  // Default cursor when outside the box
}
// Reset drawing color to default
draw_set_color(-1);  // Or whatever default color your game uses
