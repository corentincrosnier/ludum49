/// @description Insert description here
// You can write your code in this editor



//var obj=asset_get_tags(form_objs[level-1][irandom(array_length(form_objs[level-1]))]);
//instance_create_layer(irandom_range(spawnPointX-spawnRangeX,spawnPointX+spawnRangeX),irandom_range(spawnPointY-spawnRangeY,spawnPointY+spawnRangeY),"Instances",form_objs[level-1][irandom(array_length(form_objs[level-1])-1)]);

//instance_create_depth(irandom_range(spawnPointX-spawnRangeX,spawnPointX+spawnRangeX),irandom_range(spawnPointY-spawnRangeY,spawnPointY+spawnRangeY),0,choose(obj_form1,obj_form2)); 

//instance_create_layer(irandom_range(spawnPointX-spawnRangeX,spawnPointX+spawnRangeX),irandom_range(spawnPointY-spawnRangeY,spawnPointY+spawnRangeY),"Instances",form_objs[theme][irandom(array_length(form_objs[theme]) - 1)]);

if(firstStart){
	audio_play_sound(asset_get_index("snd_level"+string(theme+1)),1,true);
	firstStart=false;
}

layer_sprite_index(charId,0);

if (!fail && level < nb_level && cur_progression < array_length(piece_tab[level]))
{
	cur_piece_spawn_x = irandom_range(spawnPointX-spawnRangeX,spawnPointX+spawnRangeX);
	var sp_x = cur_piece_spawn_x;
	var sp_y = cursor_spawn_y;
	sp_y = 0;
	//instance_create_layer(sp_x, sp_y, "Instances_front", obj_spawnPieceCursor);
	instance_create_layer(sp_x, sp_y, "Controllers", obj_spawnPieceCursor);
	alarm[2] = room_speed * 0.6;
	alarm[3] = 1;
}

else if (!fail && level < nb_level && cur_progression == array_length(piece_tab[level]))
{
	obj_nextController.alarm[0] = 1;
	alarm[1] = room_speed * 4;
	
	layer_sprite_index(charId,5);
	audio_play_sound(snd_countdown, 1, false);
	obj_validateTimerController.alarm[0] = 1;
	audio_sound_gain(asset_get_index("snd_level"+string(theme+1)),gainLvl[theme]/2,0);
}

