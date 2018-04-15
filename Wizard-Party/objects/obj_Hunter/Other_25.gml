/// @description Draw Bomb
draw_self();

if alarm[11] > 0 {
	draw_sprite(spr_BombItem, 0, obj_Player.x, obj_Player.y - 32);	
}