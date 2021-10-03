/// @description Insert description here
// You can write your code in this editor

if (!touch)
{
	with(obj_LevelController)
		alarm[0]=room_speed*spawnTime;
	touch = true;
}

if (abs(phy_linear_velocity_y - other.phy_linear_velocity_y ) > 7)
{
	show_debug_message(abs(phy_linear_velocity_y  - other.phy_linear_velocity_y ));
	audio_play_sound(snd_sfxCollision, 1, false);
	audio_sound_gain(snd_sfxCollision, abs(phy_linear_velocity_y - other.phy_linear_velocity_y ) / 50, 0);
}