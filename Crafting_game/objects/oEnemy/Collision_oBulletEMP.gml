// In the collision event
stored_position = path_position; // Store the current path position
path_end(); // Stop the current path

// Set an alarm to restart the path after 5 seconds (150 steps)
alarm[0] = 150;
