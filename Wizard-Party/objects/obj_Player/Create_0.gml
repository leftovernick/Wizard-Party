//Initialize Variables

initialize_movement_entity(.5, 1, obj_Solid);

image_speed = 0;
acceleration_ = .5;
max_speed_ = 1.5;
roll_speed_ = 2;
direction_facing_ = dir.right;
roll_direction_ = dir.right;


global.playerHealth = 4;

enum player {
	move,
	sword,
	evade
}

enum dir {
	right,
	up,
	left,
	down
}

state_ = player.move;

// Sprite Lookup Table
// Move
sprite_[player.move, dir.right] = spr_PlayerRunRight;
sprite_[player.move, dir.up] = spr_PlayerRunUp;
sprite_[player.move, dir.left] = spr_PlayerRunRight;
sprite_[player.move, dir.down] = spr_PlayerRunDown;

// Sword
sprite_[player.sword, dir.right] = spr_PlayerAttackRight;
sprite_[player.sword, dir.up] = spr_PlayerAttackUp;
sprite_[player.sword, dir.left] = spr_PlayerAttackRight;
sprite_[player.sword, dir.down] = spr_PlayerAttackDown;

// Roll
sprite_[player.evade, dir.right] = spr_PlayerRollRight;
sprite_[player.evade, dir.up] = spr_PlayerRollUp;
sprite_[player.evade, dir.left] = spr_PlayerRollRight;
sprite_[player.evade, dir.down] = spr_PlayerRollDown;