//Checking args
if (argument_count != 4){
    show_message("This script accepts 2 parameters");
    return -1;
}

var rect_w = argument1;
var rect_h = argument2;
var chars_per_row = argument0;
var sentence = argument3;
var i = 0;
var chars_amount = 0;
var tmp_sentence = "";
var total_height = 0;
var sentences_num = string_length(sentence) / chars_per_row;
var rows_num = floor((rect_h - 15) / string_height("test"));
var iterate = true;

while (iterate){
    //Set right font every time
    draw_set_font(fnt_minecraftia);

    total_height += 1;
    
    if (string_height("a") * total_height >= rect_h - string_height("a")){
        return total_height;
    }
    
    total_height++;
}

//Iterating sentence while length of partial one is as long as rectangle width
/*for (i = 0; i < string_length(sentence); i++){
    tmp_sentence = string_copy(sentence, 0, i);

    //If we reached the right lenght (minus the same offset we find in the right part
    //of the box -> 15px    
    if (string_length(tmp_sentence) >= rect_w - 15){
        //This string is the right length, add this height to total one and compare it 
        //with total height
        total_height++;
        
        //If we reached the right height (same as above but counting number of sentences)
        if (total_height * string_height("test") >= rect_h - 15){
            //Exit and return total number of sentences for height
            return total_height;
        }
    }
}*/

