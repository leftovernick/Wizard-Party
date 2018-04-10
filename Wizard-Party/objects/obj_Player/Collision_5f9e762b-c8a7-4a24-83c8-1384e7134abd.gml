/// @description Room_go_to

global.player_start_position = other.start_;
room_goto(other.room_);
audio_play_sound(a_room_transition, 8, false);
persistent = true;
