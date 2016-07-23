//scr_text("Text",speed,x,y);

if (not instance_exists(obj_textManager)) {
   instance_create(x, y, obj_textManager);
}

txt = instance_create(argument2,argument3,obj_text);

with (txt) {
    padding = 16;
    maxlength = view_wview[0];
    text = argument0;
    spd = argument1;
    font = fnt_messagebox;
    
    text_length = string_length(text);
    font_size = font_get_size(font);
    
    draw_set_font(font);
    
    text_width = string_width_ext(text,font_size+(font_size/2), maxlength);
    text_height = string_height_ext(text,font_size+(font_size/2), maxlength);
    
    boxwidth = text_width + (padding*2);
    boxheight = text_height + (padding*2);
}

// add instance to the beginning of the list into text manager instance
if (instance_exists(obj_textManager)) {
   current_list = obj_textManager.instances;
   new_list = ds_list_create();
   
   ds_list_add(new_list, txt);
   
   for (i = 0; i < ds_list_size(current_list); i++) {
       ds_list_add(new_list, ds_list_find_value(current_list, i));
   }
   
   // Update list with new item on the bottom
   obj_textManager.instances = new_list;
   
} else {
  show_message("No instance of obj_textManager found in the game");
}
