
if global.load == true {
	global.player_start_position = instance_position(global.start_x, global.start_y, obj_StartPosition);
	global.load = false;
}

if instance_exists(global.player_start_position) {
	if instance_exists(obj_Player) {
		obj_Player.persistent = false;	
		obj_Player.x = global.player_start_position.x;
		obj_Player.y = global.player_start_position.y;
		obj_Player.layer = layer_get_id("Instances");
	} else {
		var _start_x = global.player_start_position.x;
		var _start_y = global.player_start_position.y;
		instance_create_layer(_start_x, _start_y, "Instances", obj_Player);
	}
}

