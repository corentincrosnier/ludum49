/// @description Insert description here
// You can write your code in this editor

cursor_x = window_mouse_get_x() / (window_get_width() / room_width);
cursor_y = window_mouse_get_y() / (window_get_height() / room_height);

cursor_x = clamp(cursor_x, 0, room_width - 15);
cursor_y = clamp(cursor_y, 0, room_height - 15);

window_mouse_set(cursor_x * (window_get_width() / room_width), cursor_y * (window_get_height() / room_height));

if ((x >= round(maxX - sprite_width / 2)  && cursor_x >= maxX - sprite_width / 2)
	|| (x <= round(minX + sprite_width / 2) && cursor_x <= minX + sprite_width / 2))
{
	phy_speed_x = 0;
	phy_position_x = round(clamp(x, minX + sprite_width / 2, maxX - sprite_width / 2));
}
else
	phy_speed_x = 0.05 * (cursor_x - x);

if ((y >= round(maxY - sprite_height / 2) && cursor_y >= maxY - sprite_height / 2)
	|| (y <= round(minY + sprite_height / 2) && cursor_y <= minY + sprite_height / 2))
{
	phy_speed_y = 0;
	phy_position_y = round(clamp(y, minY + sprite_height / 2, maxY - sprite_height / 2));
}
else
	phy_speed_y = 0.1 * (cursor_y - y);

prevMouseX=cursor_x;
prevMouseY=cursor_y;