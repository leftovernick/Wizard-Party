initialize_hurtbox_entity();
depth = -bbox_bottom;
wall_ = instance_create_layer(x, y, "Instances", obj_Solid);
if is_in_destroyed_list(id) {
	instance_destroy();
	instance_destroy(wall_);
}