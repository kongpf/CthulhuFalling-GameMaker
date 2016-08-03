///scr_hint(text)
var text = argument0;

// Create instance of obj_hint
with (instance_create(0, 0, obj_hint)) {
     hint = text;
}
