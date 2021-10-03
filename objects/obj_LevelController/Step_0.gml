/// @description Insert description here
// You can write your code in this editor

/*
if keyboard_check_pressed(ord("N"))
{
	level++;
	cur_progression = 0;
}
else if keyboard_check_pressed(ord("R"))
{
	cur_progression = 0;
}
*/

if (!fail)
{
	for (i = 0; i < cur_progression; i += 1)
	{
		if(piece_array[i].y > room_height+32){
			fail = true;
			alarm[1] = room_speed * 2;
			show_debug_message("DEAD");
			break;
		}
	}
}