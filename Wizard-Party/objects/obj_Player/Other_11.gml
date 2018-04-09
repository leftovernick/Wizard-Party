/// @description Sword State

image_speed = .8;

//Create HitBox if one frame 1
if animation_hit_frame(1) {
	var _angle = direction_facing_*90;
	var _life = 3;
	var _damage = 1;
	var _knockback = 8;
	var _hitbox = create_hitbox(spr_SwordHitBox, x, y, _angle, _life, [obj_Enemy, obj_Grass, obj_Bush], _damage, _knockback);	
	audio_play_sound(a_swipe, 8, false);
	
	// Adjust for direction_facing_
	switch direction_facing_ {
		case dir.up: _hitbox.y -= 4; break;	
		default: _hitbox.y -= 8; break;
	}
}

if animation_hit_frame(image_number-1){
	state_ = player.move;	
}