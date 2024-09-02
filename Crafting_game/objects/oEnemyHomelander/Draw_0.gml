event_inherited();
draw_self();

// Draw the health bar
var bar_width = 15;
var bar_height = 2;
var bar_x = x - bar_width / 2;
var bar_y = y - 20;

// Calculate the width of the filled part of the health bar
var filled_width = (hp / max_hp) * bar_width;

// Draw the black outline of the health bar
draw_set_color(c_black);
draw_rectangle(bar_x - 1, bar_y - 1, bar_x + bar_width + 1, bar_y + bar_height + 1, false);

// Draw the filled part of the health bar
draw_set_color(c_green);
draw_rectangle(bar_x, bar_y, bar_x + filled_width, bar_y + bar_height, false);

// Draw the background of the health bar
if (hp < max_hp) {
    draw_set_color(c_red);
    draw_rectangle(bar_x + filled_width, bar_y, bar_x + bar_width, bar_y + bar_height, false);
}
draw_set_color(-1);

// Shooting and circle code
if(mouseOver(x, y, sprite_width, sprite_height))
    draw_circle(x, y, range, true);

// Find the nearest tower (either oTower1, oTower2, oTower3, or oTower4)
var tw1 = instance_nearest(x, y, oTower1);
var tw2 = instance_nearest(x, y, oTower2);
var tw3 = instance_nearest(x, y, oTower3);
var tw4 = instance_nearest(x, y, oTower4);
var tw = noone;

// Determine which tower is closest
if (tw1 != noone && tw2 != noone && tw3 != noone && tw4 != noone) {
    if (point_distance(x, y, tw1.x, tw1.y) < point_distance(x, y, tw2.x, tw2.y) && point_distance(x, y, tw1.x, tw1.y) < point_distance(x, y, tw3.x, tw3.y) && point_distance(x, y, tw1.x, tw1.y) < point_distance(x, y, tw4.x, tw4.y)) {
        tw = tw1;
    } else if (point_distance(x, y, tw2.x, tw2.y) < point_distance(x, y, tw3.x, tw3.y) && point_distance(x, y, tw2.x, tw2.y) < point_distance(x, y, tw4.x, tw4.y)) {
        tw = tw2;
    } else if (point_distance(x, y, tw3.x, tw3.y) < point_distance(x, y, tw4.x, tw4.y)) {
        tw = tw3;
    } else {
        tw = tw4;
    }
} else if (tw1 != noone && tw2 != noone && tw3 != noone) {
    if (point_distance(x, y, tw1.x, tw1.y) < point_distance(x, y, tw2.x, tw2.y) && point_distance(x, y, tw1.x, tw1.y) < point_distance(x, y, tw3.x, tw3.y)) {
        tw = tw1;
    } else if (point_distance(x, y, tw2.x, tw2.y) < point_distance(x, y, tw3.x, tw3.y)) {
        tw = tw2;
    } else {
        tw = tw3;
    }
} else if (tw1 != noone && tw2 != noone && tw4 != noone) {
    if (point_distance(x, y, tw1.x, tw1.y) < point_distance(x, y, tw2.x, tw2.y) && point_distance(x, y, tw1.x, tw1.y) < point_distance(x, y, tw4.x, tw4.y)) {
        tw = tw1;
    } else if (point_distance(x, y, tw2.x, tw2.y) < point_distance(x, y, tw4.x, tw4.y)) {
        tw = tw2;
    } else {
        tw = tw4;
    }
} else if (tw1 != noone && tw3 != noone && tw4 != noone) {
    if (point_distance(x, y, tw1.x, tw1.y) < point_distance(x, y, tw3.x, tw3.y) && point_distance(x, y, tw1.x, tw1.y) < point_distance(x, y, tw4.x, tw4.y)) {
        tw = tw1;
    } else if (point_distance(x, y, tw3.x, tw3.y) < point_distance(x, y, tw4.x, tw4.y)) {
        tw = tw3;
    } else {
        tw = tw4;
    }
} else if (tw2 != noone && tw3 != noone && tw4 != noone) {
    if (point_distance(x, y, tw2.x, tw2.y) < point_distance(x, y, tw3.x, tw3.y) && point_distance(x, y, tw2.x, tw2.y) < point_distance(x, y, tw4.x, tw4.y)) {
        tw = tw2;
    } else if (point_distance(x, y, tw3.x, tw3.y) < point_distance(x, y, tw4.x, tw4.y)) {
        tw = tw3;
    } else {
        tw = tw4;
    }
} else if (tw1 != noone && tw2 != noone) {
    if (point_distance(x, y, tw1.x, tw1.y) < point_distance(x, y, tw2.x, tw2.y)) {
        tw = tw1;
    } else {
        tw = tw2;
    }
} else if (tw1 != noone && tw3 != noone) {
    if (point_distance(x, y, tw1.x, tw1.y) < point_distance(x, y, tw3.x, tw3.y)) {
        tw = tw1;
    } else {
        tw = tw3;
    }
} else if (tw1 != noone && tw4 != noone) {
    if (point_distance(x, y, tw1.x, tw1.y) < point_distance(x, y, tw4.x, tw4.y)) {
        tw = tw1;
    } else {
        tw = tw4;
    }
} else if (tw2 != noone && tw3 != noone) {
    if (point_distance(x, y, tw2.x, tw2.y) < point_distance(x, y, tw3.x, tw3.y)) {
        tw = tw2;
    } else {
        tw = tw3;
    }
} else if (tw2 != noone && tw4 != noone) {
    if (point_distance(x, y, tw2.x, tw2.y) < point_distance(x, y, tw4.x, tw4.y)) {
        tw = tw2;
    } else {
        tw = tw4;
    }
} else if (tw3 != noone && tw4 != noone) {
    if (point_distance(x, y, tw3.x, tw3.y) < point_distance(x, y, tw4.x, tw4.y)) {
        tw = tw3;
    } else {
        tw = tw4;
    }
} else if (tw1 != noone) {
    tw = tw1;
} else if (tw2 != noone) {
    tw = tw2;
} else if (tw3 != noone) {
    tw = tw3;
} else if (tw4 != noone) {
    tw = tw4;
}

// Shooting logic
if (tw != noone) {
    // Check if the nearest tower is within range
    if (point_distance(x, y, tw.x, tw.y) <= range + 15) {
        if (!shooting) {
            alarm[0] = 1;
            shooting = true;
        }

        objectToShoot = tw;
        // Draw a line to the target if the mouse is over the instance
        if (mouseOver(x, y, sprite_width, sprite_height))
            draw_line(x, y, tw.x, tw.y);
    } else {
        shooting = false;
        objectToShoot = noone;
    }
}
