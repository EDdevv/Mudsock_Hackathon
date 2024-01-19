	if place_meeting(x,y,Obj_Player) and (room == Room1){
				DoorTrans(Room2);
				Obj_Player.x = 96;
				Obj_Player.y = 64;
		}
		if place_meeting(x,y,Obj_Player) and (room == Room2){
				DoorTrans(Room1);
				Obj_Player.x = 928;
				Obj_Player.y = 64;
		}
		if place_meeting(x,y,Obj_Player) and (room == Room3){
				DoorTrans(Room2);
				Obj_Player.x = 896;
				Obj_Player.y = 576;
		}