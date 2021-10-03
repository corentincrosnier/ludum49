/// @description Insert description here
// You can write your code in this editor



minX=room_width/2-125.5;
maxX=room_width/2+125;
minY=16;
maxY=161;
spd=0.5;

spawnMouseX = room_width / 2;
spawnMouseY = maxY - 10;

window_mouse_set(spawnMouseX * (window_get_width() / room_width), spawnMouseY * (window_get_height() / room_height));
cursor_x = window_mouse_get_x() / (window_get_width() / room_width);
cursor_y = window_mouse_get_y() / (window_get_height() / room_height);
startMouseX=cursor_x;
startMouseY=cursor_y;
prevMouseX=cursor_x;
prevMouseY=cursor_y;
/*
phy_position_x=mouse_x;
phy_position_y=mouse_y;
*/

