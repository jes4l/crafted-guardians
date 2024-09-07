if (!place_meeting(x, y, oPlayer) && 
    sprite_index != sPlayer_idle && 
    sprite_index != sPlayer_move && 
    sprite_index != sPlayerFemale_move && 
    sprite_index != sPlayerFemale_idle) {
    
    collision_processed_lava = false;
}
