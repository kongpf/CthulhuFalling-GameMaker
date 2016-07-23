//there must be 2 args
if (argument_count != 2){
    show_message("2 parameters accepted");
    exit;
}

//this will count pages displayed until now
var pages_displayed = 0;
//params acceptance
var PARAM_array = argument0, PARAM_dim = argument1;

draw_set_colour(c_black);

//Do this until pages finish
for (i = 0; i < PARAM_dim; i++){
    //current page to be displayed
    var current_page = PARAM_array[i];
    
    //now invoke script to show the sentence
    oltd_type_sentence(current_page);
    
    show_message("enter > next page");
}

