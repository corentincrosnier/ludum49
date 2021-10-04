/// @description Insert description here
// You can write your code in this editor

image_angle = 0;

switch(cur_number)
{
	case 1:
		sprite_index = spr_1_rouge;
		image_angle += 10;
		image_xscale = 1.5;
		image_yscale = 1.5;
		angle = 1;
		alarm[1] = 5;
		break;
	case 2:
		sprite_index = spr_2_rouge;
		image_angle -= 10;
		image_xscale = 1.5;
		image_yscale = 1.5;
		angle = -1;
		alarm[1] = 5;
		break;
	case 3:
		sprite_index = spr_3_rouge;
		image_angle += 10;
		image_xscale = 1.5;
		image_yscale = 1.5;
		angle = 1;
		alarm[1] = 5;
		break;
	case 4:
		sprite_index = spr_4_rouge;
		image_angle -= 10;
		image_xscale = 1.5;
		image_yscale = 1.5;
		angle = -1;
		alarm[1] = 5;
		instance_create_depth(irandom_range(190,210),55,0,obj_holdit);
		break;
	case 5:
		sprite_index = spr_5_rouge;
		image_angle += 10;
		image_xscale = 1.5;
		image_yscale = 1.5;
		angle = 1;
		alarm[1] = 5;
		break;
}
visible = true;

if (cur_number == 0)
{
	sprite_index = noone;
	visible = false;
	alarm[1] = 0;
	cur_number = 4;
	if(instance_exists(obj_holdit)){
		with(obj_holdit) instance_destroy(self);
	}
}

else
{
	cur_number--;
	//alarm[0] = 0.7 * room_speed;
	alarm[0] = 0.9 * room_speed;
}
if (fail)
{
	visible = false;
	cur_number = 4;
	alarm[0] = 0;
}