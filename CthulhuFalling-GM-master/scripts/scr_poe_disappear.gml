///scr_poe_disappear
if (instance_exists(obj_poeIntro)) {
   effect_create_above(ef_smoke, obj_poeIntro.x, obj_poeIntro.y, 1, c_purple);
   with obj_poeIntro instance_destroy();
   show_debug_message("Poe disappeared");
}
