if (argument_count != 4){
    show_message("Usage: show_dialog_box(<integer> box_type [0 = big box below || 1 = character floating box], <string> box_text)");
}

var type = argument0;
var text = argument1;
var object = argument2;
var name = argument3;

switch (type){
    case 0:
        obj_DialogController.sentence_display = text;
        obj_DialogController.speaker_name = name;
        obj_DialogController.speaker_obj_x = object.x;
        obj_DialogController.speaker_obj_y = object.y;
        with(object)
            obj_DialogController.speaker_obj = object_index;
    break;
    
    case 1:
        obj_Window_Dude.my_string = text;
        obj_Window_Dude.target_obj = object;
    break;
    
    default:
        show_message("No box assigned to number " + string(type));
    break;
}

