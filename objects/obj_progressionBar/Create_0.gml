/// @description Insert description here
// You can write your code in this editor

sprite_block = noone;
curX = x + 3;
minY = y + 1;

switch(theme)
{
	case 0:
		sprite_block = spr_progBarStar;
		break;
	case 1:
		sprite_block = spr_progBarPlante;
		break;
	case 2:
		sprite_block = spr_progBarSpooky;
		break;
}

last_level = 0;