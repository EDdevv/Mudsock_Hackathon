timer --;
if (place_meeting(x+2, y+3, Obj_Wall)){
	direction = point_direction(x,y,Obj_Player.x,Obj_Player.y);
	speed = 3
}
if timer < 0{
	instance_create_layer(Obj_Enemy3.x,Obj_Enemy3.y,"Bullets",Obj_Bullet);
	timer = 60;
}

if (HP <= 0){
	instance_destroy();
	global.killcount ++;
	global.r3dead3 = true;
}