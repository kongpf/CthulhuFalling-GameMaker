///scr_spawnManager_update_list(last_room, player_x, player_y)
last_room = argument[0];
player_x = argument[1];
player_y = argument[2];

// Check if item is already contained in list
var exists = false;
var length = ds_list_size(obj_spawnManager.visited_rooms);
var c = 0;

for (c = 0; c < length; c++) {
    var current = obj_spawnManager.visited_rooms[| c];
    
    if (current[0] == last_room and current[1] == player_x and current[2] == player_y) {
       // Same item
       exists = true;
       break;
    }
}

if (not exists) {
    // Add new item to list (representing last room visited)
    // New item
    var couple;
    couple[0] = last_room;
    couple[1] = player_x;
    couple[2] = player_y;
    
    ds_list_add(obj_spawnManager.visited_rooms, couple);
}
