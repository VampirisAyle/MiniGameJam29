/// @description Main
// You can write your code in this editor

menu_block = obj_player.menu_block

if (menu_block) {
	speed = 0;
} else {
	if (justrun)
		move_towards_point(obj_player.x,y,move_speed);
	else {
		if (place_meeting(x, y+2, obj_ground)) {
			move_y = 0;
			if (keyboard_check(vk_space) && distance_to_object(obj_player) < 150)
				move_y = -jump_speed;
		}
		else if (move_y < 10)
		move_y += 1;

		move_and_collide(move_x, move_y, obj_ground);
		if (runaway=false && chase=false && distance_to_object(obj_player) < 150) {
		    chase=true;
		    runaway=false;
		}

		// New Proximity Trigger for Chase (Only one for life of instance)
		if (chase=true && runaway=false && distance_to_object(obj_player) < 400) {
		    move_towards_point(obj_player.x,y,move_speed);
		}

		// If Char is more than 400 pixels away, stop Chase
		if (chase=true && runaway=false && distance_to_object(obj_player) > 300) {
		    move_towards_point(obj_player.x,y,1);
		}

		// Flee in random direction away from Char after Collision Event with Char
		if (chase=false && runaway=true) {
		    move_towards_point(obj_player.x,y,move_speed *2);
		    playerdirection = point_direction(x,y,obj_player.x,y);
		    direction = (playerdirection + (180));
		}
	}
}
