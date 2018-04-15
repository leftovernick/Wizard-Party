
if obj_Input.action_one_pressed_ {
	if char_count_ < string_length(text_[page_]){
		char_count_ = string_length(text_[page_]);
	} else if page_ + 1 < array_length_1d(text_) {
		page_ += 1;
		char_count_ = 0;
	} else {
	instance_destroy();
	obj_Player.state_ = player.move;
	obj_Player.alarm[2] = global.one_second/5;
	}
}