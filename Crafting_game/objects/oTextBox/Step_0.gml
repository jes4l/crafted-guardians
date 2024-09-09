
// Step Event
if (writable) {
    var filtered_name = "";
    var allowed_chars = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
    var new_invalid_char_detected = false;  // Temporary flag for this step
    
    for (var i = 1; i <= string_length(keyboard_string); i++) {
        var char = string_char_at(keyboard_string, i);
        if (string_pos(char, allowed_chars) > 0) {
            filtered_name += char;
        } else {
            new_invalid_char_detected = true;  // Set the temporary flag if an invalid character is detected
            show_debug_message("Invalid character detected: " + char);
        }
    }
    
    // Update the global.name with the filtered input
    global.name = filtered_name;
    show_debug_message("Filtered name: " + global.name);
    
    // If backspace is pressed and there's text, remove the last character
    if (keyboard_check_pressed(vk_backspace) && string_length(global.name) > 0) {
        global.name = string_copy(global.name, 1, string_length(global.name) - 1);
        show_debug_message("Backspace pressed. Updated name: " + global.name);
    }
    // If the text is below the limit, update it from keyboard_string
    else if (string_length(filtered_name) <= max_length) {
        global.name = filtered_name;
        show_debug_message("Name updated: " + global.name);
    }
    // If the limit is reached, keep the input but show an error
    else if (string_length(filtered_name) > max_length) {
        keyboard_string = string_copy(filtered_name, 1, max_length);  // Trim extra input
        error_message = "Character limit reached!";  // Show error message
        error_timer = error_display_duration;  // Reset the timer to display the message for a set duration
        show_debug_message("Character limit reached. Error message set.");
    }
    
    // Display invalid character message if an invalid character was detected
    if (new_invalid_char_detected && !invalid_char_detected) {
        invalid_char_message = "Invalid character!";
        invalid_char_timer = invalid_char_display_duration;
        invalid_char_detected = true;  // Set the main flag
        show_debug_message("Invalid character message set.");
    } else if (!new_invalid_char_detected) {
        invalid_char_detected = false;  // Reset the main flag if no invalid character is detected
    }
}

// Blinking cursor logic
cursor_timer += 1;
if (cursor_timer >= cursor_blink_speed) {
    cursor_timer = 0;
    cursor = (cursor == "|") ? " " : "|";  // Toggle between visible and invisible cursor
    show_debug_message("Cursor toggled: " + cursor);
}

// Handle mouse clicks to toggle writable state
if (mouse_check_button_pressed(mb_left)) {
    if (point_in_rectangle(mouse_x, mouse_y, x1, y1, x2, y2)) {
        writable = true;  // Activate the text box
        show_debug_message("Text box activated.");
    } else {
        writable = false;  // Deactivate the text box
        // If no name was entered, set it to "Anonymous"
        if (string_length(global.name) == 0) {
            global.name = "Anonymous";
            show_debug_message("No name entered. Set to Anonymous.");
        }
        show_debug_message("Text box deactivated.");
    }
}

// Sync the keyboard_string with global.name when the box is inactive
if (!writable) {
    keyboard_string = global.name;
    show_debug_message("Keyboard string synced with global.name: " + keyboard_string);
}

// Countdown for error message display
if (error_timer > 0) {
    error_timer -= 1;
    if (error_timer <= 0) {
        error_message = "";  // Hide the error message after the timer ends
        show_debug_message("Error message hidden.");
    }
}

// Countdown for invalid character message display
if (invalid_char_timer > 0) {
    invalid_char_timer -= 1;
    if (invalid_char_timer <= 0) {
        invalid_char_message = "";  // Hide the invalid character message after the timer ends
        show_debug_message("Invalid character message hidden.");
    }
}
