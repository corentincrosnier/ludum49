/// @description Insert description here
// You can write your code in this editor

spawnTime=0.8;
spawnPointX=room_width/2;
spawnPointY=-16;
//spawnRangeX=40;
spawnRangeX=60;
spawnRangeY=0;

firstStart=true;

cur_piece_spawn_x = 0;
cursor_spawn_y = 0;
spawn_cur_visible = true;

globalvar cur_progression;
cur_progression = 0;

globalvar nb_level;
nb_level = 15;

globalvar piece_tab;

//LEVEL 1
piece_tab[0][0] = e_piece_type.rectangle;
piece_tab[0][1] = e_piece_type.rectangle;

//LEVEL 2
piece_tab[1][0] = e_piece_type.rectangle;
piece_tab[1][1] = e_piece_type.rectangle;
piece_tab[1][2] = e_piece_type.rectangle;

//LEVEL 3
piece_tab[2][0] = e_piece_type.square;
piece_tab[2][1] = e_piece_type.rectangle;
piece_tab[2][2] = e_piece_type.rectangle;

//LEVEL 4
piece_tab[3][0] = e_piece_type.square;
piece_tab[3][1] = e_piece_type.rectangle;
piece_tab[3][2] = e_piece_type.square;

//LEVEL 5
piece_tab[4][0] = e_piece_type.square;
piece_tab[4][1] = e_piece_type.rectangle;
piece_tab[4][2] = e_piece_type.rectangle;
piece_tab[4][3] = e_piece_type.square;

//LEVEL 6
piece_tab[5][0] = e_piece_type.rectangle;
piece_tab[5][1] = e_piece_type.rectangle;
piece_tab[5][2] = e_piece_type.rectangle;
piece_tab[5][3] = e_piece_type.rectangle;
piece_tab[5][4] = e_piece_type.triangle;

//LEVEL 7
piece_tab[6][0] = e_piece_type.square;
piece_tab[6][1] = e_piece_type.square;
piece_tab[6][2] = e_piece_type.triangle;
piece_tab[6][3] = e_piece_type.triangle;

//LEVEL 8
piece_tab[7][0] = e_piece_type.square;
piece_tab[7][1] = e_piece_type.triangle;
piece_tab[7][2] = e_piece_type.rectangle;
piece_tab[7][3] = e_piece_type.rectangle;
piece_tab[7][4] = e_piece_type.rectangle;

//LEVEL 9
piece_tab[8][0] = e_piece_type.triangle;
piece_tab[8][1] = e_piece_type.triangle;
piece_tab[8][2] = e_piece_type.triangle;
piece_tab[8][3] = e_piece_type.square;

//LEVEL 10
piece_tab[9][0] = e_piece_type.rectangle;
piece_tab[9][1] = e_piece_type.rectangle;
piece_tab[9][2] = e_piece_type.square;
piece_tab[9][3] = e_piece_type.circle;

//LEVEL 11
piece_tab[10][0] = e_piece_type.triangle;
piece_tab[10][1] = e_piece_type.rectangle;
piece_tab[10][2] = e_piece_type.rectangle;
piece_tab[10][3] = e_piece_type.circle;

//LEVEL 12
piece_tab[11][0] = e_piece_type.circle;
piece_tab[11][1] = e_piece_type.rectangle;
piece_tab[11][2] = e_piece_type.rectangle;
piece_tab[11][3] = e_piece_type.rectangle;

//LEVEL 13
piece_tab[12][0] = e_piece_type.rectangle;
piece_tab[12][1] = e_piece_type.rectangle;
piece_tab[12][2] = e_piece_type.triangle;
piece_tab[12][3] = e_piece_type.circle;
piece_tab[12][4] = e_piece_type.square;

//LEVEL 14
piece_tab[13][0] = e_piece_type.triangle;
piece_tab[13][1] = e_piece_type.triangle;
piece_tab[13][2] = e_piece_type.circle;
piece_tab[13][3] = e_piece_type.triangle;

//LEVEL 15
piece_tab[14][0] = e_piece_type.circle;
piece_tab[14][1] = e_piece_type.circle;
piece_tab[14][2] = e_piece_type.square;
piece_tab[14][3] = e_piece_type.circle;

globalvar fail;
fail = false;
audio_play_sound(snd_timer_start, 1, false);
obj_startTimerController.alarm[0] = 1;

layerId=layer_get_id("Assets_front");
charId=layer_sprite_get_id(layerId,"char"+string(theme+1));
layer_sprite_speed(charId,0);
layer_sprite_index(charId,0);

//audio_play_sound(asset_get_index("snd_level"+string(theme+1)),1,true);
/*
switch(theme)
{
	case 0:
		audio_play_sound(snd_theme1V2, 1, true);
		break;
	case 1:
		//audio_play_sound(snd_theme2Trim, 1, true);
		audio_play_sound(snd_theme3Trim, 1, true);
		break;
	case 2:
		//audio_play_sound(snd_theme3Trim, 1, true);
		audio_play_sound(snd_spookyTrim, 1, true);
		break;
}
*/

obj_nextController.alarm[0] = 1;
alarm[0]=room_speed*3;
//alarm[0]=2;