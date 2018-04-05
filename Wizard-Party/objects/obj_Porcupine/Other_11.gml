/// @description Idle State

image_index = 0;
image_speed = 0;

if alarm[0] <= 0 {
	alarm[0] = random_range(2, 4) * game_get_speed(gamespeed_fps);
	state_ = porcupine.move;
	direction_ = random(360);
}