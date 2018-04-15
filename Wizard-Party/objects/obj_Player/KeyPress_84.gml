/// @description Testing Key

obj_Game.debug_ = true;

inventory_add_item(obj_RingItem);
inventory_add_item(obj_SwordItem);
inventory_add_item(obj_BombItem);

global.player_max_health = 3;
global.player_health = global.player_max_health;
global.player_max_stamina = 3;
global.player_stamina = global.player_max_stamina;

obj_Camera.shake_ = 5;

//create_animation_effect(spr_ExplosionEffect, mouse_x, mouse_y, 1, true);
//create_hitbox(spr_BombHitBox, mouse_x, mouse_y, 0, 3, [obj_Grass, obj_Enemy, obj_Player, obj_Rock], 2, 12);
//audio_play_sound(a_explosion, 7, false);

instance_create_layer(mouse_x, mouse_y, "Instances", obj_TextBox);
