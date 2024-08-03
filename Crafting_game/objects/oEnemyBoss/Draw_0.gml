/// @description Insert description here
// You can write your code in this editor
draw_self();

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