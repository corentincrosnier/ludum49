/// @description Insert description here
// You can write your code in this editor

//GAME OVER
for (i = 0; i < array_length(piece_array); i += 1)
	instance_destroy(piece_array[i]);

cur_progression = 0;
if (fail == false)
	level++;
fail = false;
alarm[0]=room_speed*spawnTime