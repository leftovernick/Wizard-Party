/// @description Attack State

if animation_hit_frame(3) {
	var _damage = 1;
	var _knockback = 4;
	var _life = 1;
	create_hitbox(spr_PorcupineHitBox, x, y-8, 0, _life, [], _damage, _knockback)	
}

if animation_hit_frame(image_number-1) {
	state_ = porcupine.idle;
	sprite_inex = spr_PorcupineRun;
	alarm[0] = 2*game_get_speed(gamespeed_fps);
}