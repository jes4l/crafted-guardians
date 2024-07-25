// Create event
message = "Mine Materials to Build Towers to Destroy the Enemies";
message_visible = true;
timer_visible = false;
alarm[0] = room_speed * 3; // Set alarm to 3 seconds for the message
font = fntGUI; // Set the custom font for the message
font_timer = fntGUI_large; // Set the custom font for the countdown timer (ensure you have a larger font defined)
global.countdown = 5; // Set countdown timer to 5 seconds
