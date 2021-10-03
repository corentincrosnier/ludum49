/// @description Insert description here
// You can write your code in this editor


theme=selection;
show_debug_message("enter");
switch(theme){
	case 0:
		room_goto(Room1);
		break;
	case 1: 
		room_goto(Room2);
		break;
	case 2:
		room_goto(Room1);
		break;
}