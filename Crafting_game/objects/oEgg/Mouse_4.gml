// Increment the image index
image_index += 1;

// Check if the frame is at the maximum (6)
if (image_index >= 8) {
    // Destroy the egg object
    instance_destroy();
} else {
    // Spawn objects based on image_index
    if (image_index == 1) {
        instance_create_layer(x, y, "Instances_1", oE1);
    } else if (image_index == 2) {
        instance_create_layer(x, y, "Instances_1", oE2);
    } else if (image_index == 3) {
        instance_create_layer(x, y, "Instances_1", oE3);
    } else if (image_index == 4) {
        instance_create_layer(x, y, "Instances_1", oE4);
    }
}
