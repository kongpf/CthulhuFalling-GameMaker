///Set all variables
//Screen variables
obj_DialogController.VIEWPORT_WIDTH = window_get_width();
obj_DialogController.VIEWPORT_HEIGHT = window_get_height();
obj_DialogController.DEVICE_SCREEN_WIDTH = display_get_width();
obj_DialogController.DEVICE_SCREEN_HEIGHT = display_get_height();
obj_DialogController.VIEWPORT_X = view_xview[0];
obj_DialogController.VIEWPORT_Y = view_yview[0];

//sentence to display
obj_DialogController.sentence_display = "initial";
obj_DialogController.trigger_string = "initial";
obj_DialogController.backup_string = sentence_display;

//boolean to allow drawing
obj_DialogController.can_draw_box = true;
obj_DialogController.can_type = true;
obj_DialogController.can_draw_sentence = true;

//type of the box (floating / below)
obj_DialogController.box_type = "below"; //none == default | not chosen

//array to store pages
obj_DialogController.pages_array[0] = "";
obj_DialogController.pages_array_count = 0;

//number of effective pages
obj_DialogController.n_pages = 1;
obj_DialogController.typed_letters = 0;

//user permission
obj_DialogController.user_permitted = false;
obj_DialogController.user_permitted_last = false;

//number of total chars printed since the beginning
obj_DialogController.n_chars_printed_total = 0;
obj_DialogController.n_pages_drawn = 1;

//Coords
obj_DialogController.string_x = 300;
obj_DialogController.string_y = 300;
//obj_DialogController.rect_w = VIEWPORT_WIDTH * 0.3;
//obj_DialogController.rect_h = VIEWPORT_WIDTH * 0.2;
obj_DialogController.chars_to_add = -1;
obj_DialogController.triggered = false;
obj_DialogController.not_executed_yet = true;
obj_DialogController.string_len = -1;
obj_DialogController.is_last_page = false;
obj_DialogController.waiting_page_continue = false;
obj_DialogController.chars_offset = 0.3;

//number of chars per row
obj_DialogController.n_chars_row = oltd_define_sentence_length(sentence_display, rect_w);

//number of rows per page
obj_DialogController.n_rows_page = oltd_define_rows_per_page(n_chars_row, rect_w, rect_h, sentence_display);

//number of chars per page
obj_DialogController.n_chars_page = n_rows_page * n_chars_row;

