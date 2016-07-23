//Checking args
if (argument_count != 2){
    show_message("This script accepts 2 parameters");
    return -1;
}

//Variables
var rect_w = argument1;
var sentence = argument0;
var i = 0, chars_amount = 0;
var tmp_sentence = "";
var iterate = true;

while (iterate){
    //Set right font every time
    draw_set_font(fnt_minecraftia);
    
    //Use random char to calculate length
    tmp_sentence += "a";
    
    //Check if width is shorter than box width
    if (string_width(tmp_sentence) >= rect_w - string_width("a")){
        return string_length(tmp_sentence);
    }
}

