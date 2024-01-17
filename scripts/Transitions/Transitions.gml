global.midTransition = false;
global.roomTarget = -1;
global.PlayerMove = true;
r1x = 416;
r1y = 96;
r2x = 192;
r2y = 480;
r3x = 96;
r3y = 256;
// new room transiton attempt
//places seqences in the room
function TransitionPlaceSequence(_type){
	if (layer_exists("transition")) layer_destroy("transition");
	var _lay = layer_create(-9999,"transition");
	layer_sequence_create(_lay,0,0,_type)
}
function TransitionPlaceSequenceFight(_type){
	if (layer_exists("transition")) layer_destroy("transition");
	var _lay = layer_create(-9999,"transition");
	layer_sequence_create(_lay,160,120,_type)
}
//_typeOut is fadeout sequence and _typeIn is fadein sequence
//Called when you go from one room to another and can switch out your in/out sequences
function transitionStart(_roomTarget, _typeOut, _typeIn, _Playerx, _Playery){
	if (!global.midTransition){
		global.midTransition = true;
		global.roomTarget = _roomTarget;
		TransitionPlaceSequence(_typeOut);
		layer_set_target_room(_roomTarget);
		TransitionPlaceSequence(_typeIn);
		layer_reset_target_room();
		global.PlayerLocatex = _Playerx
		global.PlayerLocatey = _Playery
		return true;
	}
	else return false;
}

function transitionStart2(_roomTarget, _typeOut, _typeIn, _Playerx, _Playery, _PlayerRoom){
	if (!global.midTransition){
		global.midTransition = true;
		global.roomTarget = _roomTarget;
		TransitionPlaceSequence(_typeOut);
		layer_set_target_room(_roomTarget);
		TransitionPlaceSequence(_typeIn);
		layer_reset_target_room();
		global.PlayerLocatex = _Playerx
		global.PlayerLocatey = _Playery
		global.PlayerRoom = _PlayerRoom
		return true;
	}
	else return false;
}
//fade out transition
function TransitionChangeRoom(){
	room_goto(global.roomTarget)
	Obj_Player.x = global.PlayerLocatex
	Obj_Player.y = global.PlayerLocatey
}
function TransitionChangeRoomFight(){
	room_goto(global.roomTarget)
}
//fade in transition
function transitionFinished(){
	layer_sequence_destroy(self.elementID);
	global.midTransition = false;
}
//Stop the player from moving for Transition
function TransitionPlayerStop(){
	global.movespd = 0
	global.movespdspr = 0
}
function TransitionPlayerGo(){
	global.movespd = 1.5
	global.movespdspr = 2.5
}
//locates the player where they need to be
function TransitionPlayerLocate(){
	global.PlayerLocate = true
}

function transitionStartBeginning(_roomTarget, _typeIn){
	if (!global.midTransition){
		global.midTransition = true;
		global.roomTarget = _roomTarget;
		layer_set_target_room(_roomTarget);
		TransitionPlaceSequence(_typeIn);
		layer_reset_target_room();
		return true;
	}
	else return false;
}

function transitionStartFight(_roomTarget, _typeOut, _typeIn){
	if (!global.midTransition){
		global.midTransition = true;
		global.roomTarget = _roomTarget;
		TransitionPlaceSequenceFight(_typeOut);
		layer_set_target_room(_roomTarget);
		TransitionPlaceSequenceFight(_typeIn);
		layer_reset_target_room();
		//global.PlayerLocatex = 99999
		//global.PlayerLocatey = 99999
		return true;
	}
	else return false;
}

function easyDoor(_roomTarget){
	room_goto(_roomTarget);
}