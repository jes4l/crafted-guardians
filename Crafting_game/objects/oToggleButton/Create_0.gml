// In the Room Creation Code or an event that triggers when entering the room
audio_stop_sound(snd_fire);

// Create Event
button_state = "Male";  // Initial state
global.playerGender = "male";  // Default gender
button_width = 60;
button_height = 15;
x1 = (room_width - button_width) / 2;
y1 = room_height - button_height - 20;  // Position at the bottom middle with some margin
x2 = x1 + button_width;
y2 = y1 + button_height;

show_debug_message("Button created with initial state: " + button_state);
show_debug_message("Default player gender set to: " + global.playerGender);
show_debug_message("Button coordinates: (" + string(x1) + ", " + string(y1) + ") to (" + string(x2) + ", " + string(y2) + ")");

// Create the initial instance
if (button_state == "Male") {
    var male_instance = instance_create_layer(room_width / 2, room_height / 2, "Instances_1", oMaless);
    male_instance.image_xscale = 3;  // Increase scale
    male_instance.image_yscale = 3;  // Increase scale
} else {
    var female_instance = instance_create_layer(room_width / 2, room_height / 2, "Instances_1", oFemaless);
    female_instance.image_xscale = 3;  // Increase scale
    female_instance.image_yscale = 3;  // Increase scale
}
