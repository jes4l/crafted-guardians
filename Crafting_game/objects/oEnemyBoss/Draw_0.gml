/// @description Insert description here
// You can write your code in this editor

// Call the default draw event
event_inherited();
draw_self();

// Draw the health bar
var bar_width = 30; // Width of the health bar (even smaller)
var bar_height = 3; // Height of the health bar (even smaller)
var bar_x = x - bar_width / 2; // X position of the health bar
var bar_y = y - 20; // Y position of the health bar (slightly higher)

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


if(mouseOver(x,y,sprite_width,sprite_height))
	draw_circle(x,y,range,true);
	
var tw = instance_nearest(x,y,oTower1);
if(tw != noone)
{
	if(point_distance(x,y,tw.x,tw.y) <= range+15)
	{
	
		if(!shooting)
		{
			alarm[0] = 1;
			shooting = true;	
		}
		
		objectToShoot = tw;
		if(mouseOver(x,y,sprite_width,sprite_height))
			draw_line(x,y,tw.x,tw.y);
	}
	else
	{
		shooting = false;
		objectToShoot = noone;
		
	}
	
}