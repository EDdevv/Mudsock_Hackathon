// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function object_collision(_Object){
if (place_meeting( x+global.hmove,y,_Object))
{
	while(!place_meeting(x+sign(global.hmove),y,_Object))
	{
		x= x+sign(global.hmove);
	}
	global.hmove = 0;
}
if (place_meeting( x,y+global.vmove,_Object))
{
	while(!place_meeting(x,y+sign(global.vmove),_Object))
	{
		y= y+sign(global.vmove);
	}
	global.vmove = 0;
}
}