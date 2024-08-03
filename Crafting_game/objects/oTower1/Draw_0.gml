/// @description Insert description here
// You can write your code in this editor
draw_self();
if(mouseOver(x,y,sprite_width,sprite_height))
    draw_circle(x,y,range,true);
	
var en = instance_nearest(x, y, oEnemy);
var boss = instance_nearest(x, y, oEnemyBoss);
var en_dist = noone;
var boss_dist = noone;
var nearest = noone;

// Check if the enemy instance exists and calculate its distance
if (en != noone) {
    en_dist = point_distance(x, y, en.x, en.y);
}

// Check if the boss instance exists and calculate its distance
if (boss != noone) {
    boss_dist = point_distance(x, y, boss.x, boss.y);
}

// Determine the nearest instance
if (en != noone && boss != noone) {
    nearest = (en_dist <= boss_dist) ? en : boss;
} else if (en != noone) {
    nearest = en;
} else if (boss != noone) {
    nearest = boss;
}

if (nearest != noone) {
    if (point_distance(x, y, nearest.x, nearest.y) <= range + 15) {
        if (!shooting) {
            alarm[0] = 1;
            shooting = true;
        }

        objectToShoot = nearest;
        if (mouseOver(x, y, sprite_width, sprite_height))
            draw_line(x, y, nearest.x, nearest.y);
    } else {
        shooting = false;
        objectToShoot = noone;
    }
}






// Call the default draw event
event_inherited();
draw_self();

// Draw the health bar
var bar_width = 30; // Width of the health bar (even smaller)
var bar_height = 3; // Height of the health bar (even smaller)
var bar_x = x - bar_width / 2; // X position of the health bar
var bar_y = y - 25; // Y position of the health bar (slightly lower)

// Calculate the width of the filled part of the health bar
var filled_width = (hp / max_hp) * bar_width;

// Draw the black outline of the health bar
draw_set_color(c_black); // Set color to black
draw_rectangle(bar_x - 1, bar_y - 1, bar_x + bar_width + 1, bar_y + bar_height + 1, false);

// Draw the filled part of the health bar
draw_set_color(c_green); // Set color to green
draw_rectangle(bar_x, bar_y, bar_x + filled_width, bar_y + bar_height, false);

// Draw the background of the health bar (remaining part)
if (hp < max_hp) {
    draw_set_color(c_red); // Set color to red
    draw_rectangle(bar_x + filled_width, bar_y, bar_x + bar_width, bar_y + bar_height, false);
}
draw_set_color(-1);
