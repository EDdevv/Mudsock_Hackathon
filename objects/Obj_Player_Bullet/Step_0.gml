if (place_meeting( x,y,Obj_Enemy)){
	instance_destroy()
	Obj_Enemy.HP -= 15;
}
if (place_meeting( x,y,Obj_Enemy2)){
	instance_destroy()
	Obj_Enemy2.HP -= 15;
}
if (place_meeting( x,y,Obj_Enemy3)){
	instance_destroy()
	Obj_Enemy3.HP -= 15;
}
if ( x > 1080 || x < 0 || y > 720 || y < 0){
instance_destroy();	
}