/// @description Attack State

image_speed = .35;

if animation_hit_frame(0) {
	var _damage = 1;
	var _knockback = 4;
	var _life = 10;
	create_hitbox(spr_PorcupineHitBox, x, y-4, 0, _life, [obj_Player], _damage, _knockback)	
	audio_play_sound(a_porcupine_attack, 5, false);
}

if animation_hit_frame(image_number-1) {
	state_ = porcupine.idle;
	sprite_index = spr_PorcupineRun;
	alarm[1] = 2*global.one_second;
}