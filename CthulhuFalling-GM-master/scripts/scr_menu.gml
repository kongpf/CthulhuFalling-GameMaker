var choice = argument0;

switch (choice) {
       case "Play": {
            room_goto(rm_introLevel1);
            break;
       }
       
       case "Exit": {
            game_end();
            break;
       }
       
       case "[DEV] Under Providence": {
            room_goto(rm_sewer1);
       }
       
       default: break;
}
