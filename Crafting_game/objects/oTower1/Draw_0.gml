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
