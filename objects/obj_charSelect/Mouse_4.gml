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

theme=selection;
room_goto(Room1);