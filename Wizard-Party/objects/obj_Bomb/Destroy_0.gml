create_animation_effect(spr_ExplosionEffect, x, y, 1, true);
create_hitbox(spr_BombHitBox, x, y-4, 0, 3, [obj_Grass, obj_Enemy, obj_Player, obj_Rock], 2, 12);
audio_play_sound(a_explosion, 7, false);