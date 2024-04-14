/// @description Player Interaction
// You can write your code in this editor

if (menu_block == false) {

	move_x = (keyboard_check(vk_right) || keyboard_check(ord("D"))) - (keyboard_check(vk_left) || keyboard_check(ord("A")) || keyboard_check(ord("Q")));
	move_x *= move_speed;

	if (place_meeting(x, y+2, obj_ground))
	{
		move_y = 0;
		if (keyboard_check(vk_space))
			move_y = -jump_speed;
	}
	else if (move_y < 10)
	move_y += 1;

	move_and_collide(move_x, move_y, obj_ground);

	if (move_x != 0)
		image_xscale = sign(move_x);
	
	if (keyboard_check_pressed(ord("P")))
		menu_block = true;
} else {
	if (keyboard_check_pressed(ord("P")))
		menu_block = false;
}