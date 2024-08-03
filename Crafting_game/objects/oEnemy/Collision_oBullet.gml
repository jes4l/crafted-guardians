hp -= 20;
with(other) instance_destroy();

if (hp <= 0) {
	instance_destroy();
}
