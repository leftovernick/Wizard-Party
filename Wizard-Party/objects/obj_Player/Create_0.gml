//Initialize Variables

speed_ = 2;
direction_facing_ = dir.right;

image_speed = 0;
global.playerHealth = 4;

enum player {
	move
}

enum dir {
	right,
	up,
	left,
	down
}

// Sprite Move Lookup Table
sprite_[player.move, dir.right] = spr_PlayerRunRight;
sprite_[player.move, dir.up] = spr_PlayerRunUp;
sprite_[player.move, dir.left] = spr_PlayerRunRight;
sprite_[player.move, dir.down] = spr_PlayerRunDown;