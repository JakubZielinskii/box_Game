// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function MovementAndAnimations()
{	
	// silly :3
	// keys
	var walkLeftKey = ord("A");
	var walkRightKey = ord("D");
	
	var jumpKey = vk_space;
	
	
	// movement
	var Pspeed = 150 * delta_time / 1000000;
	
	if(keyboard_check(walkLeftKey))
	{
		x -= Pspeed;
		sprite_index = PlayerWalk;
		image_xscale = -1;
	}
	else if(keyboard_check(walkRightKey))
	{
		x += Pspeed;
		sprite_index = PlayerWalk;
		image_xscale = 1;
	}
	else
	{
		sprite_index = PlayerIdle;
	}
}

function applyGravity()
{
	// stands for gravity
	var amountToApply = 1;	
	var grvt = 10;
	
	amountToApply *= (delta_time / 1000000 * grvt) + 1;
	
	
	if(place_meeting(x, y + amountToApply, TilesetMaybe))
	{
		amountToApply = 0
	}
	else
	{
		y += amountToApply;
	}
}