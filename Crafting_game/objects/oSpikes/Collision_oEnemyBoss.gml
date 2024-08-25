
with (other) {
    if (!in_contact_with_spikes) {
        hp -= 30; 
        in_contact_with_spikes = true; 
    }
}
if (!collision_processed) {
    hp -= 17; 
    collision_processed = true; 
}
