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

