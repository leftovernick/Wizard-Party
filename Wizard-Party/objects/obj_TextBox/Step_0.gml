
if obj_Input.action_one_pressed_ {
	if page_ + 1 < array_length_1d(text_) {
		page_ += 1;
	}  else {
	instance_destroy();
	obj_Player.state_ = player.move;
	obj_Player.alarm[2] = global.one_second/5;
	}
}