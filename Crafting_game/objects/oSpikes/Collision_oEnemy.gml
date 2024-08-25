
with (other) {
    if (!in_contact_with_spikes) {
        hp -= 20; 
        in_contact_with_spikes = true; 
    }
}
if (!collision_processed) {
    hp -= 15; 
    collision_processed = true; 
}
