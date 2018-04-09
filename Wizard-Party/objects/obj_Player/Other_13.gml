/// @description Bomb State

instance_create_layer(x, y+2, "Instances", obj_Bomb);
audio_play_sound(a_set_bomb, 5, false);

state_ = player.move;