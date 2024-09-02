
with (other) {
    if (!in_contact_with_spikes) {
        hp -= 120; 
        in_contact_with_spikes = true; 
    }
}
if (!collision_processed) {
    hp -= 20; 
    collision_processed = true; 
}
