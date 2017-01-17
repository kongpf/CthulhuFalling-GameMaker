///scr_blood(direction);
var dir = argument[0];

part_emitter_region(obj_bloodCont.p_sys, obj_bloodCont.p_emit, x + 1, x - 1, y + 1, y - 1, 1, 1);
part_emitter_burst(obj_bloodCont.p_sys, obj_bloodCont.p_emit, obj_bloodCont.p_part, 20); 

//Create blood on wall
spawn = random_range(10, 30);

for (i = 0; i < spawn; i++) {
    var b = instance_create(x + random_range(-16, 16), y + random_range(-16, 16), obj_blood);
    b.dir = dir;
}
