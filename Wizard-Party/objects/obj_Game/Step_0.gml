if paused_ {
	var _array_size = array_length_1d(global.inventory)
	if obj_Input.right_pressed_ {
		item_index_ = min(item_index_ + 1, _array_size - 1);
		audio_play_sound(a_menu_move, 1, false);
	}
	if obj_Input.left_pressed_ {
		item_index_ = max(item_index_ - 1, 0);
		audio_play_sound(a_menu_move, 1, false);
	}
	if obj_Input.action_one_pressed_ {
		if global.item[1] == global.inventory[item_index_] and global.inventory[item_index_] != noone {
			global.item[1] = global.item[0];
			global.item[0] = global.inventory[item_index_];
			audio_play_sound(a_menu_select, 3, false);
		} else {
		global.item[0] = global.inventory[item_index_];
		audio_play_sound(a_menu_select, 3, false);
		}
	}
	if obj_Input.action_two_pressed_ {
		if global.item[0] == global.inventory[item_index_] and global.inventory[item_index_] != noone {
			global.item[0] = global.item[1];
			global.item[1] = global.inventory[item_index_];
			audio_play_sound(a_menu_select, 3, false);
		} else {
		global.item[1] = global.inventory[item_index_];
		audio_play_sound(a_menu_select, 3, false);
		}
	}
}

if obj_Input.paused_pressed_ {
	if paused_ {
		paused_ = false;	
		if sprite_exists(paused_sprite_) {
			sprite_delete(paused_sprite_)
		}
		instance_activate_all();
		audio_play_sound(a_unpause, 7, false);
	} else if room != rm_title{
		paused_ = true;
		paused_sprite_ = sprite_create_from_surface(application_surface, 0, 0, view_wport[0], view_hport[0], false, false, 0, 0);
		instance_deactivate_all(true);
		var _array_size = array_length_1d(global.inventory)
		for (var _i = 0; _i < _array_size; _i++) {
			instance_activate_object(global.inventory[_i]);
		}
		instance_activate_object(obj_Input);
		audio_play_sound(a_pause, 7, false);
	}
}