// Step Event
if (mouse_check_button_pressed(mb_left)) {
    if (point_in_rectangle(mouse_x, mouse_y, x1, y1, x2, y2)) {
        show_debug_message("Button clicked at: (" + string(mouse_x) + ", " + string(mouse_y) + ")");
        if (button_state == "Male") {
            button_state = "Female";
            event_inherited();
            global.playerGender = "female";
            show_debug_message("Button Female Pressed: " + string(global.playerGender));
            //room_goto(rmGame);
            
            // Destroy existing instances
            with (instance_find(oMaless, 0)) {
                instance_destroy();
            }
            var female_instance = instance_create_layer(room_width / 2, room_height / 2, "Instances_1", oFemaless);
            female_instance.image_xscale = 3;  // Increase scale
            female_instance.image_yscale = 3;  // Increase scale
            show_debug_message("Created oFemaless instance");
        } else {
            button_state = "Male";
            event_inherited();
            global.playerGender = "male";
            show_debug_message("Button Male Pressed: " + string(global.playerGender));
            //room_goto(rmGame);
            
            // Destroy existing instances
            with (instance_find(oFemaless, 0)) {
                instance_destroy();
            }
            var male_instance = instance_create_layer(room_width / 2, room_height / 2, "Instances_1", oMaless);
            male_instance.image_xscale = 3;  // Increase scale
            male_instance.image_yscale = 3;  // Increase scale
            show_debug_message("Created oMaless instance");
        }
        show_debug_message("Button state toggled to: " + button_state);
    } else {
        show_debug_message("Button not clicked. Mouse position: (" + string(mouse_x) + ", " + string(mouse_y) + ")");
    }
}
