/// @description Insert description here
// You can write your code in this editor

depth = -y;

_above = place_meeting(x, y-5, obj_Player);
_below = place_meeting(x, y+5, obj_Player);
_left = place_meeting(x-5, y, obj_Player);
_right = place_meeting(x+5, y, obj_Player);

if _above and obj_Input.action_one_pressed_ and obj_Player.roll_direction_ = 270 or _below and obj_Input.action_one_pressed_ and obj_Player.roll_direction_ = 90 or _left and obj_Input.action_one_pressed_ and obj_Player.roll_direction_ = 0 or _right and obj_Input.action_one_pressed_ and obj_Player.roll_direction_ = 180 {
	if obj_Player.state_ != player.talking and obj_Player.alarm[2] <= 0 {
		my_text_box_ = instance_create_layer(x-64,y+16,"Instances", obj_TextBox);
		my_text_box_.text_ = my_text_;
		obj_Player.state_ = player.talking;
	}
}