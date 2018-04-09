/// @description Attack State

if not instance_exists(obj_Player) {
	state_ = bat.move;
	exit;
}

if distance_to_object(obj_Player) > range_ {
	state_ = bat.move;	
}

var _direction = point_direction(x, y, obj_Player.x, obj_Player.y);
var _x_speed = lengthdir_x(speed_, _direction);
if _x_speed != 0 {
	image_xscale = sign(_x_speed);
}


add_movement_maxspeed(_direction, .123, 1);
move_movement_entity(true);

var _player = instance_place(x, y, obj_Player);

if _player {
	create_hitbox(sprite_index, x, y, 0, 1, [obj_Player], 1, 5);
}