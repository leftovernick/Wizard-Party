///

if not instance_exists(obj_Player) exit;

var _distance_to_player = point_distance(x, y, obj_Player.x, obj_Player.y);
if _distance_to_player <16 {
	state_ = porcupine.attack;
	image_index = 0;
	sprite_index = spr_PorcupineAttack;
}