/// @descriptionn Debug info

if debug_ = true {
	if instance_exists(obj_Player) {
		draw_text(10, 10, "Quests: ")
		for (var _i = 0; _i < ds_grid_height(obj_Player.quests_); _i++) {
			draw_text(10, 20 + (_i*10), string(ds_grid_get(obj_Player.quests_, 0, _i)));
			draw_text(75, 20 + (_i*10), string(ds_grid_get(obj_Player.quests_, 1, _i)));
			draw_text(150, 20 + (_i*10), string(ds_grid_get(obj_Player.quests_, 2, _i)));
		}
		var _is_in = ds_grid_value_exists(obj_Player.quests_, 0, 0, 0, 5, "PRCPN");
		draw_text(10, 40, _is_in);
	
	}
}