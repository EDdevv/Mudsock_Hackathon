if (place_meeting( x,y,Obj_Player)){
	instance_destroy()
	Obj_Player.HP -= 5;
}
if ( x > 1080 || x < 0 || y > 720 || y < 0){
instance_destroy();	
}