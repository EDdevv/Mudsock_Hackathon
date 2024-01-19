timer --;
if (place_meeting(x+2, y+3, Obj_Wall)){
	direction = point_direction(x,y,Obj_Player.x,Obj_Player.y);
	speed = 3
}
if timer < 0{
	instance_create_layer(Obj_Enemy.x,Obj_Enemy.y,"Bullets",Obj_Bullet);
	timer = 60;
}

if (HP <= 0){
	instance_destroy();
	global.killcount ++;
	if (room == Room1){global.r1dead1 = true};
	if (room == Room2){global.r2dead1 = true};
	if (room == Room3){global.r3dead1 = true};
}