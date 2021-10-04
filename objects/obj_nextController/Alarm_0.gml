/// @description Insert description here
// You can write your code in this editor

minX = 278;
minY = 28;
maxX = 294;
maxY = 123;

instance_destroy(obj_thumbForm);

var sp_x = minX + (maxX - minX) / 2;
var sp_y = minY;

show_debug_message("WHAT")
for (i = 0; i < array_length(piece_tab[level]) - cur_progression; i += 1)
{
	show_debug_message(minY);
		show_debug_message(maxY);
	if (sp_y + sprite_get_height(spr_miniature_carre_nuit) < maxY)
	{
		instance_create_layer(sp_x, sp_y, "Instances_front", obj_thumbForm);
		show_debug_message(sp_y)
		sp_y += sprite_get_height(spr_miniature_carre_nuit) + spaceY;
	}
	else
		break;
}