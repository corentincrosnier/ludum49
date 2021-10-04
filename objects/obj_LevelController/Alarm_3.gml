/// @description Insert description here
// You can write your code in this editor

if (instance_exists(obj_spawnPieceCursor))
{
	obj_spawnPieceCursor.visible = spawn_cur_visible;
	spawn_cur_visible = !spawn_cur_visible;
	alarm[3] = room_speed * 0.2;
}

else
{
	spawn_cur_visible = true;
	alarm[3] = 0;
}