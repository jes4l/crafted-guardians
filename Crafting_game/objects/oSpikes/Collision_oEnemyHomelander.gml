
with (other) {
    if (!in_contact_with_spikes) {
        hp -= 25; 
        in_contact_with_spikes = true; 
    }
}
if (!collision_processed) {
    hp -= 19; 
    collision_processed = true; 
}
