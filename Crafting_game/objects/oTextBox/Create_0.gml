
// Define smaller rectangle coordinates for the input box
x1 = room_width / 2 - 350;
y1 = room_height / 2 - 65;
x2 = room_width / 2 + 250;
y2 = room_height / 2 + 25;

// Initialize global variables
global.name = "";  // The input string (now global)
max_length = 10;  // Maximum character length allowed
writable = false;  // Is the text box active for typing?
cursor = "|";  // Cursor symbol
cursor_timer = 0;  // Timer for blinking cursor
cursor_blink_speed = 30;  // Blinking interval (in frames)
error_message = "";  // Error message for character limit
error_timer = 0;  // Timer for error message display
error_display_duration = 120;  // Duration for error message display in frames (2 seconds)
