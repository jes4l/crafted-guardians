if(hp <= 0) instance_destroy();


// spikes
if (!place_meeting(x, y, oEnemy) && !place_meeting(x, y, oEnemyBoss) && !place_meeting(x, y, oEnemyHomelander)) {
    collision_processed = false;
}
