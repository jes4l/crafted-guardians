if (instance_exists(tower))
{
    with (tower)
    {
        bullet_active = false; // Set bullet status to inactive
        alarm[0] = 1; // Trigger the tower to fire another bullet
    }
}
