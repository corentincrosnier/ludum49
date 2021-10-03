/// @description Insert description here
// You can write your code in this editor

if(position_meeting(mouse_x,mouse_y,obj_charSelect1)){
	selection=0;
}
else if(position_meeting(mouse_x,mouse_y,obj_charSelect2)){
	selection=1;
}
else if(position_meeting(mouse_x,mouse_y,obj_charSelect3)){
	selection=2;
}
else{
	selection = -1;
}

theme=selection;
switch(theme){
	case 0:
		room_goto(Room1);
		break;
	case 1: 
		room_goto(Room2);
		break;
	case 2:
		room_goto(Room3);
		break;
}