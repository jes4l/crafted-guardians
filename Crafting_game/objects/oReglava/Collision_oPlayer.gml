with (other) {
    if (!in_contact_with_spikes_lava) {
        hp -= 20; 
        in_contact_with_spikes_lava = true; 
    }
}
if (!collision_processed_lava) {
    hp -= 20; 
    collision_processed_lava = true; 
}