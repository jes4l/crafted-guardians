// telePart script
function telePart() {
    // Get the layer ID
    var layer_id = layer_get_id("Instances");

    // Create the particle system
    global.Sname = part_system_create_layer(layer_id, true);

    // Create the particle type
    global.Particle1 = part_type_create();
    part_type_sprite(global.Particle1, sPlayer_idle, true, false, false);
    part_type_size(global.Particle1, 1, 1, 0, 0);
    part_type_scale(global.Particle1, 1, 1);
    part_type_alpha3(global.Particle1, 1, 0.50, 0.10);
    part_type_speed(global.Particle1, 0, 0, 0, 0);
    part_type_direction(global.Particle1, 0, 0, 0, 0);
    part_type_gravity(global.Particle1, 0, 270);
    part_type_orientation(global.Particle1, 0, 0, 0, 0, true);
    part_type_blend(global.Particle1, false);
    part_type_life(global.Particle1, 60, 60);
}
