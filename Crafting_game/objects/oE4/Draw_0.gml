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
if (mouseOver(x, y, sprite_width, sprite_height))
    draw_circle(x, y, range, true);

// Find the nearest player
var ply1 = instance_nearest(x, y, oMaless);
var ply2 = instance_nearest(x, y, oFemaless);
var tw = noone;

// Determine which player is closest
if (ply1 != noone && ply2 != noone) {
    if (point_distance(x, y, ply1.x, ply1.y) < point_distance(x, y, ply2.x, ply2.y)) {
        tw = ply1;
    } else {
        tw = ply2;
    }
} else if (ply1 != noone) {
    tw = ply1;
} else if (ply2 != noone) {
    tw = ply2;
}

// Shooting logic
if (tw != noone) {
    // Check if the nearest player is within range
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
