depth = -y;

_above = place_meeting(x, y-5, obj_Player);
_below = place_meeting(x, y+5, obj_Player);
_left = place_meeting(x-5, y, obj_Player);
_right = place_meeting(x+5, y, obj_Player);


if _above and obj_Input.action_one_pressed_ and obj_Player.roll_direction_ = 270 or _below and obj_Input.action_one_pressed_ and obj_Player.roll_direction_ = 90 or _left and obj_Input.action_one_pressed_ and obj_Player.roll_direction_ = 0 or _right and obj_Input.action_one_pressed_ and obj_Player.roll_direction_ = 180 {
	if obj_Player.state_ != player.talking and obj_Player.alarm[2] <= 0 {

		
		if talked_to_ = 0 {
			talked_to_ += 1;
		} else if talked_to_ = 1 {
			my_text_ = [];
			my_text_[0] = "You're not going to go away, are you?";
			my_text_[1] = "Fine.. Go Kill 5 Porcupines or \nsomething.";
			my_text_[2] = "I don't know, \njust leave me \nalone.";
			array_spot_ = ds_grid_height(obj_Player.quests_);
			ds_grid_resize(obj_Player.quests_, 3, array_spot_+1);
			ds_grid_add(obj_Player.quests_, 0, array_spot_, "PRCPN");
			ds_grid_add(obj_Player.quests_, 1, array_spot_, false);
			ds_grid_add(obj_Player.quests_, 2, array_spot_, 0);
			talked_to_ += 1;
		} else if talked_to_ = 2 {
			var _porcupines_killed = real(ds_grid_get(obj_Player.quests_, 2, array_spot_));
			if _porcupines_killed == 5 {
				ds_grid_set(obj_Player.quests_, 1, array_spot_, true);
				array_spot_ = ds_grid_height(obj_Player.quests_);
				ds_grid_resize(obj_Player.quests_, 3, array_spot_+1);
				ds_grid_add(obj_Player.quests_, 0, array_spot_, "GEMS");
				ds_grid_add(obj_Player.quests_, 1, array_spot_, false);
				ds_grid_add(obj_Player.quests_, 2, array_spot_, 0);
				my_text_ = [];
				my_text_[0] = "Oh shit, I didn't actually think you'd do it."
				my_text_[1] = "Um.. Why don't you go collect 20 Gems."
				ds_grid_set(obj_Player.quests_, 2, array_spot_, global.player_gems);
				talked_to_ += 1;
			} else {
				my_text_ = [];
				my_text_[0] = "You've got " + string(5-_porcupines_killed) + "\n more to go";	
			}
		} else if talked_to_ = 3 {
			var _gems_collected = real(ds_grid_get(obj_Player.quests_, 2, array_spot_));
			my_text_ = [];
			my_text_[0] = string(20 - _gems_collected) + " more to go, bud."
		}
		my_text_box_ = instance_create_layer(x-64,y+16,"Instances", obj_TextBox);
		my_text_box_.text_ = my_text_;
		obj_Player.state_ = player.talking;
	}
}