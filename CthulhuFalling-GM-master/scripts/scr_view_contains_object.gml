///scr_view_contains_object(view_id, object)
var view_id = argument0;
var object = argument1;

if collision_rectangle(view_xview[view_id], view_yview[view_id], view_xview[view_id] + view_wview[view_id], view_yview[view_id] + view_hview[view_id], object, false, true) {
   return true;
} else {
   return false;
}
