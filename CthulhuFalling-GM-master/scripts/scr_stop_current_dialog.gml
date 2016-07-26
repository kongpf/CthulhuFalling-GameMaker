///scr_stop_current_dialog()
if (instance_exists(obj_textManager) and instance_exists(obj_text)) {
   with obj_textManager instance_destroy();
   with obj_text instance_destroy();
}
