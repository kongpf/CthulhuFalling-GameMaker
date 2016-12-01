///scr_scroll(text)
var text = string_wordwrap(argument[0], 40, "#", false);

with (instance_create(0, 0, obj_scroll)) {
     message = text;
}
