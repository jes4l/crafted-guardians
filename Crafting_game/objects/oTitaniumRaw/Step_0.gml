if (hp <= 0) {
    instance_destroy();
    
    var num_titanium;
    var rand = irandom(99);
    if (rand < 10) {
        num_titanium = 2;
    } else if (rand < 30) {
        num_titanium = 3;
    } else if (rand < 60) {
        num_titanium = 4;
    } else if (rand < 90) {
        num_titanium = 5;
    } else {
        num_titanium = 6;
    }
    
    var positions = [];
    
    for (var i = 0; i < num_titanium; i++) {
        var unique_position = false;
        var random_x, random_y;
        
        while (!unique_position) {
            random_x = x + irandom_range(-35, 35);
            random_y = y + irandom_range(-35, 35);
            unique_position = true;
            
            for (var j = 0; j < array_length(positions); j++) {
                if (positions[j][0] == random_x && positions[j][1] == random_y) {
                    unique_position = false;
                    break;
                }
            }
            
            if (collision_line(x, y, random_x, random_y, oCollision, true, true)) {
                unique_position = false;
            }

            if (collision_circle(random_x, random_y, 10, oCollision, true, true)) {
                unique_position = false;
            }
        }
        
        array_push(positions, [random_x, random_y]);
        
        instance_create_layer(random_x, random_y, "Instances", oTitanium);
    }
}
