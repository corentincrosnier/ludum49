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

if(position_meeting(mouse_x,mouse_y,obj_credits)){
	obj_credits.image_index=1;
}
else{
	obj_credits.image_index=0;
}

with(obj_charThumb){
	if(charId==other.selection+1){
		image_index=1;
	}
	else{
		image_index=0;
	}
}

with(obj_border){
	if(border_id==other.selection+1){
		image_index=1;
	}
	else{
		image_index=0;
	}
}


/*
if(prevSelec!=selection){
	obj_charSelect1.image_index=0;
	obj_charSelect2.image_index=0;
	obj_charSelect3.image_index=0;
	switch(selection){
		case 0:
			//obj_charSelect1.image_speed=1;
			obj_charSelect1.image_index=1;
			obj_charSelect2.image_speed=0;
			obj_charSelect3.image_speed=0;
			break;
		case 1:
			obj_charSelect1.image_speed=0;
			//obj_charSelect2.image_speed=1;
			obj_charSelect2.image_index=1;
			obj_charSelect3.image_speed=0;
			break;
		case 2:
			obj_charSelect1.image_speed=0;
			obj_charSelect2.image_speed=0;
			//obj_charSelect3.image_speed=1;
			obj_charSelect3.image_index=1;
			break;
	}
}
*/

prevSelec=selection;

/*
var select=asset_get_index("obj_charSelect"+string(selection+1));

with(obj_charThumb){
	if(id!=asset_get_index("obj_charSelect"+string(other.selection+1))){
		image_index=0;
		image_speed=0;
	}
}
with(asset_get_index("obj_charSelect"+string(selection+1))){
	image_speed=1;
}
*/