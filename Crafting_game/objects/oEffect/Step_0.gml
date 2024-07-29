// oEffect step event
// oEffect step event
part_particles_create(global.Sname, x, y, global.Particle1, 1);


x += (target.x - x) * 0.2;
y += ((target.y - 20) - y) * 0.2;

if (distance_to_point(target.x, target.y - 20) < 10) {
    instance_destroy();
    oPlayer.visible = true;
    oPlayer.x = target.x;
    oPlayer.y = target.y - 20;
}
