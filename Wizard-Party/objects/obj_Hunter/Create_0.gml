
event_inherited();

my_text_[0] = "Uh... Hey kid. \nI don't have \nanything for \nyou... so...";
my_text_[1] = "Piss off.";

array_spot_ = 0;

talked_to_ = 0;


if instance_exists(obj_Player) {
	if ds_grid_value_exists(obj_Player.quests_, 0, 0, 0, ds_grid_height(obj_Player.quests_), "GEMS") {
		array_spot_ = ds_grid_value_y(obj_Player.quests_, 0, 0, 0, ds_grid_height(obj_Player.quests_), "GEMS");
		var _gems_collected = real(ds_grid_get(obj_Player.quests_, 2, array_spot_));
		talked_to_ = 3;
	} else if ds_grid_value_exists(obj_Player.quests_, 0, 0, 0, ds_grid_height(obj_Player.quests_), "PRCPN") {
		array_spot_ = ds_grid_value_y(obj_Player.quests_, 0, 0, 0, ds_grid_height(obj_Player.quests_), "PRCPN");
		var _porcupine_killed = real(ds_grid_get(obj_Player.quests_, 2, array_spot_));
		if _porcupine_killed < 5 {
			talked_to_ = 2;
	   }
	}
}