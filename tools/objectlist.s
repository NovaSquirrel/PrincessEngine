.proc ObjGraphics
  .byt 0 ;NONE
  .byt GraphicsUpload::SP_WALKER ;GOOMBA
  .byt GraphicsUpload::SP_WALKER ;WAFFLE
  .byt GraphicsUpload::SP_WALKER ;SNEAKER
  .byt GraphicsUpload::SP_WALKER ;OWL
  .byt GraphicsUpload::SP_WALKER ;CANNON_1
  .byt GraphicsUpload::SP_WALKER ;CANNON_2
  .byt 0 ;POOF
  .byt 0 ;PLAYER_PROJECTILE
  .byt GraphicsUpload::SP_WALKER ;FIREBALL
  .byt GraphicsUpload::SP_WALKER ;FLAMES
  .byt 0 ;MOVING_PLATFORM_HORIZ
  .byt 0 ;MOVING_PLATFORM_LINE
  .byt 0 ;CHECKPOINT
  .byt 0 ;EXPLOSION
  .byt 0 ;COLLECTIBLE
  .byt 0 ;MOVING_PLATFORM_PUSH
.endproc

.proc ObjBehaviors
  .byt 0 ;NONE
  .byt ObjBehavior::AUTO_REMOVE | ObjBehavior::GET_SHOT | ObjBehavior::AUTO_RESET | ObjBehavior::WAIT_UNTIL_NEAR ;GOOMBA
  .byt ObjBehavior::AUTO_REMOVE | ObjBehavior::GET_SHOT | ObjBehavior::AUTO_RESET | ObjBehavior::WAIT_UNTIL_NEAR ;WAFFLE
  .byt ObjBehavior::AUTO_REMOVE | ObjBehavior::GET_SHOT | ObjBehavior::AUTO_RESET ;SNEAKER
  .byt ObjBehavior::AUTO_REMOVE | ObjBehavior::GET_SHOT | ObjBehavior::AUTO_RESET ;OWL
  .byt ObjBehavior::AUTO_REMOVE ;CANNON_1
  .byt ObjBehavior::AUTO_REMOVE ;CANNON_2
  .byt 0 ;POOF
  .byt 0 ;PLAYER_PROJECTILE
  .byt 0 ;FIREBALL
  .byt 0 ;FLAMES
  .byt 0 ;MOVING_PLATFORM_HORIZ
  .byt 0 ;MOVING_PLATFORM_LINE
  .byt ObjBehavior::AUTO_REMOVE ;CHECKPOINT
  .byt 0 ;EXPLOSION
  .byt ObjBehavior::AUTO_REMOVE ;COLLECTIBLE
  .byt ObjBehavior::AUTO_REMOVE ;MOVING_PLATFORM_PUSH
.endproc

.proc ObjFlags
  .byt ObjFlag::SECONDARY ;NONE
  .byt ObjFlag::PRIMARY ;GOOMBA
  .byt ObjFlag::PRIMARY ;WAFFLE
  .byt ObjFlag::PRIMARY ;SNEAKER
  .byt ObjFlag::PRIMARY ;OWL
  .byt ObjFlag::PRIMARY ;CANNON_1
  .byt ObjFlag::PRIMARY ;CANNON_2
  .byt ObjFlag::SECONDARY ;POOF
  .byt ObjFlag::ESSENTIAL ;PLAYER_PROJECTILE
  .byt ObjFlag::SECONDARY ;FIREBALL
  .byt ObjFlag::SECONDARY ;FLAMES
  .byt ObjFlag::ESSENTIAL ;MOVING_PLATFORM_HORIZ
  .byt ObjFlag::ESSENTIAL ;MOVING_PLATFORM_LINE
  .byt ObjFlag::ESSENTIAL ;CHECKPOINT
  .byt ObjFlag::SECONDARY ;EXPLOSION
  .byt ObjFlag::PRIMARY ;COLLECTIBLE
  .byt ObjFlag::ESSENTIAL ;MOVING_PLATFORM_PUSH
.endproc

.proc ObjectTable
  .raddr ObjectNone ;NONE
  .raddr ObjectGoomba ;GOOMBA
  .raddr ObjectWaffle ;WAFFLE
  .raddr ObjectSneaker ;SNEAKER
  .raddr ObjectOwl ;OWL
  .raddr ObjectCannon1 ;CANNON_1
  .raddr ObjectCannon2 ;CANNON_2
  .raddr ObjectPoof ;POOF
  .raddr ObjectPlayerProjectile ;PLAYER_PROJECTILE
  .raddr ObjectFireball ;FIREBALL
  .raddr ObjectFlames ;FLAMES
  .raddr ObjectMovingPlatformH ;MOVING_PLATFORM_HORIZ
  .raddr ObjectMovingPlatformLine ;MOVING_PLATFORM_LINE
  .raddr ObjectCheckpoint ;CHECKPOINT
  .raddr ObjectExplosion ;EXPLOSION
  .raddr ObjectCollectible ;COLLECTIBLE
  .raddr ObjectMovingPlatformPush ;MOVING_PLATFORM_PUSH
.endproc

