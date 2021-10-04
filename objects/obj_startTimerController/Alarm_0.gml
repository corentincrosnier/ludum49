/// @description Insert description here
// You can write your code in this editor

image_angle = 0;

switch(cur_number)
{
	case 0:
		sprite_index = spr_go;
		alarm[1] = 5;
		angle = 0;
		image_xscale = 1.3;
		image_yscale = 1.3;
		break;
	case 1:
		sprite_index = spr_1;
		image_angle += 10;
		image_xscale = 1.3;
		image_yscale = 1.3;
		angle = 1;
		alarm[1] = 5;
		break;
	case 2:
		sprite_index = spr_2;
		image_angle -= 10;
		image_xscale = 1.3;
		image_yscale = 1.3;
		angle = -1;
		alarm[1] = 5;
		break;
	case 3:
		sprite_index = spr_3;
		image_angle += 10;
		image_xscale = 1.3;
		image_yscale = 1.3;
		angle = 1;
		alarm[1] = 5;
		break;
}
visible = true;

if (cur_number == -1)
{
	sprite_index = noone;
	visible = false;
	alarm[1] = 0;
	cur_number = 3;
}

else
{
	cur_number--;
	alarm[0] = 0.7 * room_speed;
}