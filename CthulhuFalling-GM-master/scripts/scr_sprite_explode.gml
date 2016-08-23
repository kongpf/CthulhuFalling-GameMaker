///scr_sprite_explode(instance, chunk)
var instance = argument0;
var chunk = argument1;

ww = sprite_get_width(instance.sprite_index);
hh = sprite_get_height(instance.sprite_index);

for (i = 0; i < ww; i += chunk) {
    for (j = 0; j < hh; j += chunk) {
        particle = instance_create(instance.x + i, instance.y + j, obj_explosionParticle);
        particle.spr = instance.sprite_index;
        particle.size = chunk;
        particle.xx = i;
        particle.yy = j;
    }
}
