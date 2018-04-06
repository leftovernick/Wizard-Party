/// @description Animate

create_animation_effect(spr_DeathEffect, x, y-6, .6, true)

if chance(.75) {
	var _item = choose(obj_GemPickUp, obj_HeartPickUp);
	instance_create_layer(x, y-8, "Instances", _item);
}