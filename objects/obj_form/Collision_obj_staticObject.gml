/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if (!touch)
{
	with(obj_LevelController)
		alarm[0]=room_speed*spawnTime;
	touch = true;
}
