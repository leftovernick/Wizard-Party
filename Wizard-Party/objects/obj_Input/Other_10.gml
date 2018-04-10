/// @description Get Input

if gamepad_is_connected(0) {
	right_ = gamepad_button_check(0, gp_padr);
	left_ = gamepad_button_check(0, gp_padl);
	up_ = gamepad_button_check(0, gp_padu);
	down_ = gamepad_button_check(0, gp_padd);

	right_pressed_ = gamepad_button_check_pressed(0, gp_padr);
	left_pressed_ = gamepad_button_check_pressed(0, gp_padl);
	up_pressed_ = gamepad_button_check_pressed(0, gp_padu);
	down_pressed_ = gamepad_button_check_pressed(0, gp_padd);

	action_one_pressed_ = gamepad_button_check_pressed(0, gp_face1);
	action_two_pressed_ = gamepad_button_check_pressed(0, gp_face2);
	
	paused_pressed_ = gamepad_button_check_pressed(0, gp_start);

} else {

	right_ = keyboard_check(vk_right);
	left_ = keyboard_check(vk_left);
	up_ = keyboard_check(vk_up);
	down_ = keyboard_check(vk_down);

	right_pressed_ = keyboard_check_pressed(vk_right);
	left_pressed_ = keyboard_check_pressed(vk_left);
	up_pressed_ = keyboard_check_pressed(vk_up);
	down_pressed_ = keyboard_check_pressed(vk_down);

	action_one_pressed_ = keyboard_check_pressed(ord("X"));
	action_two_pressed_ = keyboard_check_pressed(ord("C"))

	paused_pressed_ = keyboard_check_pressed(vk_enter);

}
