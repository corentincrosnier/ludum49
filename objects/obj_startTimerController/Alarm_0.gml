/// @description Insert description here
// You can write your code in this editor

switch(cur_number)
{
	case 0:
		sprite_index = spr_go;
		break;
	case 1:
		sprite_index = spr_1;
		break;
	case 2:
		sprite_index = spr_2;
		break;
	case 3:
		sprite_index = spr_3;
		break;
}

if (cur_number == -1)
{
	sprite_index = -1;
	cur_number = 3;
}

else
{
	cur_number--;
	alarm[0] = 1 * room_speed;
}