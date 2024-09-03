hp -= 5;
with(other) instance_destroy();

if (hp <= 0) {
	room_goto(rmEnd);
	instance_destroy();
}

