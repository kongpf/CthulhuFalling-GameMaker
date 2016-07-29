///scr_grandma_transform()
if (instance_exists(obj_grandmaStanding)) {
   // Create effect
   effect_create_above(ef_smoke, obj_grandmaStanding.x, obj_grandmaStanding.y, 2, c_green);
   
   // Substitute sprite
   obj_grandmaStanding.sprite_index = spr_slime2;
}
