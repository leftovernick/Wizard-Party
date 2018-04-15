
event_inherited();

//var _add_to = ds_array_find_index(obj_Player.quests_, "PRCPN");

if ds_grid_value_exists(obj_Player.quests_, 0, 0, 0, ds_grid_height(obj_Player.quests_), "PRCPN") {
   var _ypos = ds_grid_value_y(obj_Player.quests_, 0, 0, 0, ds_grid_height(obj_Player.quests_), "PRCPN");
   var _porcupine_killed = real(ds_grid_get(obj_Player.quests_, 2, _ypos));
   if _porcupine_killed < 5 {
	_porcupine_killed += 1;
	ds_grid_add(obj_Player.quests_, 2, _ypos, 1);
   }
}