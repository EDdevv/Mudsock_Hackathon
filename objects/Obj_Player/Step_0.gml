//Movement
global.keyRight = keyboard_check(ord("D"));
global.keyLeft = keyboard_check(ord("A"));
global.keyUp = keyboard_check(ord("W"));
global.keyDown = keyboard_check(ord("S"));

if keyboard_check(vk_shift)
{
global.hmove = (global.keyRight - global.keyLeft) * global.movespdspr
global.vmove = (global.keyDown - global.keyUp) * global.movespdspr
}
else
{
global.hmove = (global.keyRight - global.keyLeft) * global.movespd
global.vmove = (global.keyDown - global.keyUp) * global.movespd
}

//Object Collisions
object_collision(Obj_Wall);
x = x+global.hmove;
y = y+global.vmove;

//Just to leave the game
if keyboard_check(vk_escape){
	game_end()
}

if (keyboard_check_pressed(vk_space)){
	instance_create_layer(Obj_Player.x,Obj_Player.y,"Bullets",Obj_Player_Bullet);
}
if (HP <= 0){
	room_goto(Room4);
	instance_destroy()
}

if (global.killcount = 1 and room = Room1){
	global.room1Clear = true;
	global.killcount = 0;
}
if (global.killcount = 2 and room = Room2){
	global.room2Clear = true;
	global.killcount = 0;
}
if (global.killcount = 3 and room = Room3){
	global.room3Clear = true;
	global.killcount = 0;
}
if (global.room1Clear == true and global.room2Clear == true and global.room3Clear == true){
	room_goto(Room5);
	global.room1Clear = false;
}
