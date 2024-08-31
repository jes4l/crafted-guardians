if (hp <= 0) {
    instance_destroy();
    
    // Weighted random selection for the number of lightning instances
    var num_lightning;
    var rand = irandom(99);
    if (rand < 10) {
        num_lightning = 2;
    } else if (rand < 30) {
        num_lightning = 3;
    } else if (rand < 60) {
        num_lightning = 4;
    } else if (rand < 85) {
        num_lightning = 5;
    } else {
        num_lightning = 6;
    }
    
    // Create an array to store the positions
    var positions = [];
    
    // Loop to create the lightning instances with random directions
    for (var i = 0; i < num_lightning; i++) {
        var unique_position = false;
        var random_x, random_y;
        
        // Ensure the position is unique
        while (!unique_position) {
            random_x = x + irandom_range(-35, 35);
            random_y = y + irandom_range(-35, 35);
            unique_position = true;
            
            // Check if the position is already used
            for (var j = 0; j < array_length(positions); j++) {
                if (positions[j][0] == random_x && positions[j][1] == random_y) {
                    unique_position = false;
                    break;
                }
            }
        }
        
        // Store the unique position
        array_push(positions, [random_x, random_y]);
        
        // Create the lightning instance at the unique position
        instance_create_layer(random_x, random_y, "Instances", oLightning);
    }
}
