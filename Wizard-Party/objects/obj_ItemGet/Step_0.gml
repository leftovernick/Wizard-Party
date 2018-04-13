if taken_ == true {
	exit;
}

_above = place_meeting(x, y-5, obj_Player);
_below = place_meeting(x, y+5, obj_Player);
_left = place_meeting(x-5, y, obj_Player);
_right = place_meeting(x+5, y, obj_Player);

if _above and obj_Input.action_one_pressed_ and obj_Player.roll_direction_ = 270 or _below and obj_Input.action_one_pressed_ and obj_Player.roll_direction_ = 90 or _left and obj_Input.action_one_pressed_ and obj_Player.roll_direction_ = 0 or _right and obj_Input.action_one_pressed_ and obj_Player.roll_direction_ = 180 {
	image_index = 1;
	event_user(0)
	alarm[0] = global.one_second/2;
	obj_Player.state_ = player.found_item;
	audio_play_sound(a_key_item, 8, false);
	taken_ = true;
}