/// @description Move State

image_speed = 0;
var _x_input = obj_Input.right_ - obj_Input.left_;
var _y_input = obj_Input.down_ - obj_Input.up_;
var _input_direction = point_direction(0, 0, _x_input, _y_input);

var _attack_input = obj_Input.action_one_pressed_;
var _roll_input = obj_Input.action_two_pressed_;

roll_direction_ = direction_facing_*90;

if _x_input == 0 and _y_input == 0 {
	image_index = 0;
	image_speed = 0;
	apply_friction_to_movement_entity();
} else {	
	image_speed = .6;
	if _x_input != 0 {
		image_xscale = _x_input;
	}

	get_direction_facing(_input_direction);
	add_movement_maxspeed(_input_direction, acceleration_, max_speed_);
	roll_direction_ = direction_facing_*90;
}

if alarm[2] <= 0 {
	inventory_use_item(obj_Input.action_one_pressed_, global.item[0]);
	inventory_use_item(obj_Input.action_two_pressed_, global.item[1]);
}



move_movement_entity(false);