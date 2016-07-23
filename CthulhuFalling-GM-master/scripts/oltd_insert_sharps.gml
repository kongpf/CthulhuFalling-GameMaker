//checking arguments count
if (argument_count != 3){
    show_message("[ERROR - oltd_insert_sharps]#This script accepts 3 arguments");
    exit;
}

//checking argument validity
if (not is_string(argument0)){
    show_message("[ERROR - oltd_insert_sharps]#Parameter must be a string");
    exit;
}

//inserting sharps into string
for (i = 0; i < string_length(argument0); i++){
    if ((i % argument1) == 0 and i != 0){
        argument0 = string_insert("#", argument0, i);
    }
}

//deleting spaces from string
for (i = 0; i < string_length(argument0); i++){
    if (string_char_at(argument0, i) == "#"){
        //Case middle char
        if (i != string_length(argument0) - 1 and i != 0){
            if (string_char_at(argument0, i - 1) == " "){
                argument0 = string_delete(argument0, i - 1, 1);
            }
            if (string_char_at(argument0, i + 1)){
                argument0 = string_delete(argument0, i + 1, 1);
            }
        }
        
        //Case first char
        if (i == 0){
            if (string_char_at(argument0, i + 1) == " "){
                argument0 = string_delete(argument0, i + 1, 1);
            }    
        }
        
        //Case last char
        if (i == string_length(argument0) - 1){
            if (string_char_at(argument0, i - 1) == " "){
                argument0 = string_delete(argument0, i - 1, 1);
            }
        }
    }
}

//Deleting sharps where every page begins (avoid bad wrapping while texting on screen)
for (i = 0; i < string_length(argument0); i++){
    //If current char in current position is newline char (#)
    if (string_char_at(argument0, i) == "#"){
        //If last page char <= current <= new page char
        if (i == argument2 || i == argument2 - 1 || i == argument2 + 1){
            //Delete that newline char, it would mess up everything concerning layout
            argument0 = string_delete(argument0, i, 1);
        }
    }
}

return argument0;

