if not instance_exists(target_) exit;

x = lerp(x, target_.x, .1);
y = lerp(y, target_.y, .1);


x = round_n(x, 1/scale_);
y = round_n(y, 1/scale_);

if shake_ >= .1 {
	x += random_range(-shake_, shake_);
	y += random_range(-shake_, shake_);

} else {
	shake_ = 0;
}

x = clamp(x, width_/2, room_width-width_/2);
y = clamp(y, height_/2, room_height-height_/2);


if shake_ >= 2 {
	camera_set_view_pos(view_camera[0], (x-width_/2) + random_range(-shake_, shake_), (y-height_/2) + random_range(-shake_, shake_));
	shake_ *= .9;
} else {
	camera_set_view_pos(view_camera[0], x-width_/2, y-height_/2);
	shake_ = 0;
}



