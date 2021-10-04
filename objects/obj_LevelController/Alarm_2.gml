/// @description Insert description here
// You can write your code in this editor

var sp_x = cur_piece_spawn_x;
if (piece_tab[level][cur_progression] == e_piece_type.triangle)
	sp_x -= 16;
var sp_y = spawnPointY;
piece_array[cur_progression] = instance_create_layer(sp_x, sp_y, "Instances", form_objs[theme][piece_tab[level][cur_progression]]);
instance_destroy(obj_spawnPieceCursor);

cur_progression++;
obj_nextController.alarm[0] = 1;