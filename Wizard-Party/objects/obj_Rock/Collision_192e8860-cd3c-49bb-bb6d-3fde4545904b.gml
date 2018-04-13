if hurtbox_entity_can_be_hit_by(other) {
	instance_destroy();
	//instance_destroy(wall_);
	create_animation_effect(spr_BushEffect, x, y, 1, true);
	add_to_destroyed_list(id);
}