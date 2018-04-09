var _last_index = index_;

if obj_Input.up_pressed_ {
	index_ = max(--index_, 0);
}

if obj_Input.down_pressed_ {
	index_ = min(++index_, option_length_-1);
}

if _last_index != index_ {
	audio_play_sound(a_menu_move, 1, false);
}

if obj_Input.action_one_pressed_ {
	switch(index_) {
		case options.continue_game:
			ini_load("save_data.ini");
			break;
			
		case options.new_game:
			room_goto(rm_world);
			audio_play_sound(a_menu_select, 3, false);
			break;
			
		case options.credits:
			show_debug_message("Credits");
			audio_play_sound(a_menu_select, 3, false);
			break;
			
		case options.quit:
			game_end();
			break;
	}
}
