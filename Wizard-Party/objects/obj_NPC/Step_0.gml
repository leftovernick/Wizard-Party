/// @description Insert description here
// You can write your code in this editor

depth = -y;

_above = place_meeting(x, y-5, obj_Player);
_below = place_meeting(x, y+5, obj_Player);
_left = place_meeting(x-5, y, obj_Player);
_right = place_meeting(x+5, y, obj_Player);

if _above and obj_Input.action_one_pressed_ or _below and obj_Input.action_one_pressed_ or _left and obj_Input.action_one_pressed_ or _right and obj_Input.action_one_pressed_ {
	show_message("What?")
	obj_Player.state_ = player.talking;
}