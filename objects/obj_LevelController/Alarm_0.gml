/// @description Insert description here
// You can write your code in this editor



//var obj=asset_get_tags(form_objs[level-1][irandom(array_length(form_objs[level-1]))]);
//instance_create_layer(irandom_range(spawnPointX-spawnRangeX,spawnPointX+spawnRangeX),irandom_range(spawnPointY-spawnRangeY,spawnPointY+spawnRangeY),"Instances",form_objs[level-1][irandom(array_length(form_objs[level-1])-1)]);

//instance_create_depth(irandom_range(spawnPointX-spawnRangeX,spawnPointX+spawnRangeX),irandom_range(spawnPointY-spawnRangeY,spawnPointY+spawnRangeY),0,choose(obj_form1,obj_form2)); 

//instance_create_layer(irandom_range(spawnPointX-spawnRangeX,spawnPointX+spawnRangeX),irandom_range(spawnPointY-spawnRangeY,spawnPointY+spawnRangeY),"Instances",form_objs[theme][irandom(array_length(form_objs[theme]) - 1)]);

if (!fail && level < nb_level && cur_progression < array_length(piece_tab[level]))
{
	var sp_x = irandom_range(spawnPointX-spawnRangeX,spawnPointX+spawnRangeX);
	var sp_y = irandom_range(spawnPointY-spawnRangeY,spawnPointY+spawnRangeY);
	piece_array[cur_progression] = instance_create_layer(sp_x, sp_y, "Instances", form_objs[theme][piece_tab[level][cur_progression]]);
	cur_progression++;
}

else if (!fail && level < nb_level && cur_progression == array_length(piece_tab[level]))
{
	alarm[1] = room_speed * 5;
}

