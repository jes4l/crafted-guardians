event_inherited();
draw_self();

// Draw the health bar
var bar_width = 30;
var bar_height = 3;
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