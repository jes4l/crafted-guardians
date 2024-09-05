
with (other) {
    if (!in_contact_with_spikes) {
        hp -= 13; 
        in_contact_with_spikes = true; 
    }
}
if (!collision_processed) {
    hp -= 50; 
    collision_processed = true; 
}
