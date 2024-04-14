mask_index = spr_platform_blue;
hsp = dir * movespeed;

if (currpos > maxpos) 
{
	dir = -1;
}
if (currpos < 0)
{
	dir = 1;
}
//met le if d'ici
	currpos += movespeed * dir;
	x += hsp;
	
	//a besoin du joueur pour marcher
	// ||
	// ||
	// \/
	//if (instance_exists(obj_player))
	//{
	//	if(round(obj_player.y + (obj_player.sprite_height/2)) > y)
	//	{
	//		mask_index = -1;
	//	} else {
	//		mask_index = spr_platform_blue;
	//		if (place_meeting(x, y-1, obj_player))
	//		{
	//			obj_player.hsp_carry = hsp;
	//		}
	//	}
	//}
//à la