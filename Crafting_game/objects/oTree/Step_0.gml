if (hp <= 0){
	instance_destroy();
	instance_create_layer(x, y, "Instances", oWood);
	instance_create_layer(x, y - 10, "Instances", oWood);
}
