draw_self();
if(mouseOver(x,y,sprite_width,sprite_height))
    draw_circle(x,y,range,true);
	
// Shooting enemy code	
var en = instance_nearest(x, y, oE1);
var boss = instance_nearest(x, y, oE2);
var homelander = instance_nearest(x, y, oE3);
var en_dist = noone;
var boss_dist = noone;
var homelander_dist = noone;
var nearest = noone;

if (en != noone) {
    en_dist = point_distance(x, y, en.x, en.y);
}

if (boss != noone) {
    boss_dist = point_distance(x, y, boss.x, boss.y);
}

if (homelander != noone) {
    homelander_dist = point_distance(x, y, homelander.x, homelander.y);
}

if (en != noone && (boss == noone || en_dist <= boss_dist) && (homelander == noone || en_dist <= homelander_dist)) {
    nearest = en;
} else if (boss != noone && (homelander == noone || boss_dist <= homelander_dist)) {
    nearest = boss;
} else if (homelander != noone) {
    nearest = homelander;
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

event_inherited();
draw_self();

// Draw the health bar
var bar_width = 15;
var bar_height = 2;
var bar_x = x - bar_width / 2;
var bar_y = y - 25;

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
