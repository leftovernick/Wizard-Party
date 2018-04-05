///@param direction

var _direction = argument[0];

direction_facing_ = round(_direction/90);
if direction_facing_ == 4 {
	direction_facing_ = 0;
}
