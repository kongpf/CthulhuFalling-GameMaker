// scr_dead
var choice = argument0;

switch (choice) {
       case "Play Again": {
            room_goto(rm_introLevel3);
            break;
       }
       
       case "Exit": {
            game_end();
            break;
       }
       
       default: break;
}
