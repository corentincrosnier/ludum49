/// @description Insert description here
// You can write your code in this editor

minX = 279;
minY = 28;
maxX = 294;
maxY = 123;

instance_destroy(obj_thumbForm);

var sp_x = minX + (maxX - minX) / 2;
var sp_y = minY;

for (i = 0; i < array_length(piece_tab[level]) - cur_progression; i += 1)
{
	var sprite_thumb = thumb_sprite[theme][piece_tab[level][i + cur_progression]];
	if (sp_y + sprite_get_height(sprite_thumb) + spaceY * 2 < maxY)
	{
		var obj_index = instance_create_layer(sp_x, sp_y, "Instances_front", obj_thumbForm);
		obj_index.sprite_index = sprite_thumb;
		show_debug_message("sprite_thumb :")
		show_debug_message(sprite_get_height(sprite_thumb))
		sp_y += sprite_get_height(sprite_thumb) + spaceY;
	}
	else
		break;
}