//Initialize Variables

initialize_movement_entity(.5, 1, obj_Solid);
initialize_hurtbox_entity();

image_speed = 0;
acceleration_ = .5;
max_speed_ = 1.5;
roll_speed_ = 2;
direction_facing_ = dir.right;
roll_direction_ = dir.right;


enum player {
	move,
	sword,
	evade,
	bomb,
	bow,
	found_item,
	hit,
	talking
}

enum dir {
	right,
	up,
	left,
	down
}

starting_state_ = player.move;
state_ = starting_state_;
quests_ = ds_grid_create(3,1);
ds_grid_add(quests_, 0,0, "ID");
ds_grid_add(quests_, 1, 0, "Completed?");
ds_grid_add(quests_, 2, 0, "Counter");

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

// Move
sprite_[player.hit, dir.right] = spr_PlayerRunRight;
sprite_[player.hit, dir.up] = spr_PlayerRunUp;
sprite_[player.hit, dir.left] = spr_PlayerRunRight;
sprite_[player.hit, dir.down] = spr_PlayerRunDown;

// Bomb
sprite_[player.bomb, dir.right] = spr_PlayerRunRight;
sprite_[player.bomb, dir.up] = spr_PlayerRunUp;
sprite_[player.bomb, dir.left] = spr_PlayerRunRight;
sprite_[player.bomb, dir.down] = spr_PlayerRunDown;

// Found Item
sprite_[player.found_item, dir.right] = spr_PlayerFoundItem;
sprite_[player.found_item, dir.up] = spr_PlayerFoundItem;
sprite_[player.found_item, dir.left] = spr_PlayerFoundItem;
sprite_[player.found_item, dir.down] = spr_PlayerFoundItem;

// Talking
sprite_[player.talking, dir.right] = spr_PlayerRunRight;
sprite_[player.talking, dir.up] = spr_PlayerRunUp;
sprite_[player.talking, dir.left] = spr_PlayerRunRight;
sprite_[player.talking, dir.down] = spr_PlayerRunDown;
