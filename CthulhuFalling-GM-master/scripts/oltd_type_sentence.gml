//this is the current page
var current_page = argument0;
var cns_string = "";

draw_set_color(c_black);

//let's type until the page is over
/*for (i = 0; i < string_length(current_page); i++){
    cns_str = string_copy(current_page, 0, ceil(typed_letters));
    draw_text(100, 100, cns_string); //change 100 and 100 with real coords
    
    show_debug_message(cns_str);
    
    typed_letters += 0.2
}*/

cns_str = string_copy(current_page, 0, ceil(typed_letters));
draw_text(100, 100, cns_string); //change 100 and 100 with real coords

show_debug_message(cns_str);

typed_letters += 0.2

