/// @description Insert description here
// You can write your code in this editor

//GAME OVER
for (i = 0; i < array_length(piece_array); i += 1)
	instance_destroy(obj_form);

cur_progression = 0;
if (fail == false)
{
	audio_play_sound(snd_timer_start, 1, false);
	alarm[0]=room_speed * 3;
	level++;
}
else
	alarm[0]=room_speed * spawnTime;
fail = false;