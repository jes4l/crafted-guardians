/// @description Insert description here
// You can write your code in this editor
if (hp <= 0){
	instance_destroy();
	wood = instance_create_layer(x, y, "Instances", oWood);
	wood.image_blend = c_red;					// image_blend changes the color of a sprite (like a tint/filter)
	wood.image_angle = irandom_range(0, 359);	// image angle is the angle of the sprite (rotates it randomly)
	wood.image_index = irandom_range(0, 1);		// image index is the frame number of the sprite
}

