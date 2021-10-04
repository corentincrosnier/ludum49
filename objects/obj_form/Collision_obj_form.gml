/// @description Insert description here
// You can write your code in this editor

if (!touch)
{
	with(obj_LevelController)
		alarm[0]=room_speed*spawnTime;
	touch = true;
}

if (sound_collision && abs(phy_linear_velocity_y - other.phy_linear_velocity_y ) > 7)
{
	show_debug_message(abs(phy_linear_velocity_y  - other.phy_linear_velocity_y ));
	var snd = audio_play_sound(snd_sfxCollision, 100, false);
	var gain = abs(phy_linear_velocity_y - other.phy_linear_velocity_y ) / 50;
	if (gain >= 0.5)
		gain = 0.5;
	audio_sound_gain(snd, gain, 0);
	sound_collision = false;
	alarm[0] = 0.15 * room_speed;
}