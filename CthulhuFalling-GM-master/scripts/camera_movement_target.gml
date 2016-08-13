///camera_movement_target(object)
var const = 0.5;
var object = argument0;
var obj_x = object.x;
var obj_y = object.y;

view_xview[0] += ((obj_x-(view_wview[0]/2)) - view_xview[0]) * const;
view_yview[0] += ((obj_y-(view_hview[0]/2)) - view_yview[0]) * const;
