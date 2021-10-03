/// @description Insert description here
// You can write your code in this editor



//var obj=asset_get_tags(form_objs[level-1][irandom(array_length(form_objs[level-1]))]);
//instance_create_layer(irandom_range(spawnPointX-spawnRangeX,spawnPointX+spawnRangeX),irandom_range(spawnPointY-spawnRangeY,spawnPointY+spawnRangeY),"Instances",form_objs[level-1][irandom(array_length(form_objs[level-1])-1)]);

//instance_create_depth(irandom_range(spawnPointX-spawnRangeX,spawnPointX+spawnRangeX),irandom_range(spawnPointY-spawnRangeY,spawnPointY+spawnRangeY),0,choose(obj_form1,obj_form2)); 

instance_create_layer(irandom_range(spawnPointX-spawnRangeX,spawnPointX+spawnRangeX),irandom_range(spawnPointY-spawnRangeY,spawnPointY+spawnRangeY),"Instances",form_objs[theme][irandom(array_length(form_objs[theme]) - 1)]);

alarm[0]=room_speed*spawnTime;

