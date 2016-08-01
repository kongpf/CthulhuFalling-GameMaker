///scr_hint(text)
var text = argument0;

draw_set_halign(fa_center);
draw_set_colour(c_white);
draw_text_transformed(view_wview[0] / 2, view_hview[0] - 70, text, 1, 1, 0);
