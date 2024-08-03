// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function playerManager()
{
	
	// is it supposed to look right? or left? (right == true)
	var isFacingRight = true;
	
	// keys
	var walkLeftKey = ord("A");
	var walkRightKey = ord("D");
	
	var jumpKey = vk_space;
	
	
	// movement
	var Pspeed = 50;
	
	if(keyboard_check(walkLeftKey))
	{
		x -= Pspeed;
		isFacingRight = false;
	}
	if(keyboard_check(walkRightKey))
	{
		x += Pspeed;
		isFacingRight = true;
	}
}