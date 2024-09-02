// Step event
if (global.shopMetalActive == true) {
    image_change_timer += 1; // Increment the timer

    if (image_change_timer >= room_speed) { // Check if one second has passed
        // Change image index to 0, 2, 3, 4, or 5
        if (image_index == 0) {
            image_index = 2;
        } else if (image_index == 2) {
            image_index = 3;
        } else if (image_index == 3) {
            image_index = 4;
        } else if (image_index == 4) {
            image_index = 5;
        } else {
            image_index = 0;
        }
        image_change_timer = 0; // Reset the timer
    }
}
