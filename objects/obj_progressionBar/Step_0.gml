/// @description Insert description here
// You can write your code in this editor

if (last_level < level)
{
	instance_create_layer(curX, minY, "Instances_front", obj_prog_block);
	obj_prog_block.sprite_index = sprite_block;
	curX += 6;
	last_level = level;
}

if (level == nb_level)
{
	audio_stop_all();
	credits = true;
	audio_play_sound(snd_title, 1, false);
	room_goto(Credits);
}