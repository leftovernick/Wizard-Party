/// @description Insert description here
// You can write your code in this editor
/// @description Check For Pickup

_above = place_meeting(x, y-5, obj_Player);
_below = place_meeting(x, y+5, obj_Player);
_left = place_meeting(x-5, y, obj_Player);
_right = place_meeting(x+5, y, obj_Player);

if _above and obj_Input.action_one_pressed_ or _below and obj_Input.action_one_pressed_ or _left and obj_Input.action_one_pressed_ or _right and obj_Input.action_one_pressed_ {
	sprite_index = pick_up_sprite_;
	x = obj_Player.x - 7;
	y = obj_Player.y - 32;
	event_user(0)
	alarm[0] = global.one_second/2;
	obj_Player.state_ = player.found_item;
	audio_play_sound(a_key_item, 8, false);
}