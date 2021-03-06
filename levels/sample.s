sample:
  .byt MusicTracks::WORLD_1A|0
  .byt 3
  .byt $db
  .byt GraphicsUpload::SP_WALKER
  .byt GraphicsUpload::SP_SNOWMAN
  .byt GraphicsUpload::SP_SNOWMAN
  .byt GraphicsUpload::SP_SNOWMAN
  .addr sampleData
  .addr sampleSprite
  .byt $31 ; background
  .byt GraphicsUpload::PAL_GRASSY
  .byt GraphicsUpload::PAL_ENEMY1
  .byt GraphicsUpload::BG_COMMON
  .byt GraphicsUpload::BG_GRASSY
  .byt 255 ; end
  .byt $00, $04 ; boundaries

sampleData:
  LObjN LO::RECT_1,           0, 13, 1, LN1::GROUND, 31
  LXPlus16
  LObj  LO::S_GROUND_CLIMB_L, 2, 12
  LObj  LO::S_GROUND_CLIMB_L, 1, 11
  LObjN LO::R_GROUND,         0, 12, 2, 0
  LObj  LO::S_GROUND_CLIMB_L, 1, 10
  LObjN LO::R_GROUND,         0, 11, 2, 0
  LObj  LO::S_GROUND_CLIMB_L, 1, 9
  LObj  LO::S_GROUND,         0, 10
  LObjN LO::R_GROUND,         1, 9, 9, 3
  LObjN LO::R_BRICK,          1, 5, 4, 0
  LObjN LO::R_COIN,           1, 1, 2, 0
  LObj  LO::S_BRICKPRIZE,     0, 2
  LObjN LO::R_COIN,           0, 4, 3, 0
  LObjN LO::R_BRICK,          1, 2, 1, 0
  LObjN LO::WIDE_1,           0, 5, 1, LN1::PRIZE
  LObj  LO::S_SPRING,         4, 8
  LObjN LO::R_GROUND,         6, 9, 9, 3
  LObjN LO::RECT_1,           0, 13, 1, LN1::GROUND, 31
  LObj  LO::S_COIN,           3, 7
  LObj  LO::S_SOLID_ROCK,     0, 8
  LObjN LO::R_BRICK,          3, 5, 2, 0
  LObj  LO::S_BRICKPRIZE,     2, 5
  LObjN LO::TALL_1,           2, 9, 3, LN1::LADDER
  LObjN LO::R_COIN,           1, 9, 0, 3
  LObj  LO::S_BIGHEART,       7, 4
  LObj  LO::S_SOLID_BLOCK,    0, 5
  LObjN LO::R_COIN,           1, 4, 4, 0
  LObjN LO::WIDE_1,           0, 5, 3, LN1::SOLID_LEDGE
  LObj  LO::S_PRIZE,          2, 2
  LObjN LO::R_GROUND,         2, 5, 6, 5
  LObjN LO::RECT_2,           1, 11, 1, LN2::BLACK, 4
  LObjN LO::R_GROUND,         4, 4, 7, 0
  LObj  LO::S_SOLID_BLOCK,    2, 7
  LObj  LO::S_PRIZE,          1, 4
  LObjN LO::WIDE_1,           0, 8, 4, LN1::FALLTHROUGH_LEDGE
  LObj  LO::S_SPRING,         0, 12
  LObjN LO::R_COIN,           1, 6, 3, 0
  LObj  LO::S_SOLID_BLOCK,    4, 4
  LObjN LO::RECT_1,           0, 13, 1, LN1::GROUND, 21
  LObjN LO::R_COIN,           1, 3, 2, 0
  LObjN LO::WIDE_1,           0, 4, 2, LN1::SOLID_LEDGE
  LObjN LO::WIDE_1,           0, 8, 1, LN1::SOLID_LEDGE
  LObj  LO::S_SPRING,         1, 7
  LObj  LO::S_SOLID_BLOCK,    1, 7
  LObj  LO::S_GROUND_CLIMB_L, 4, 12
  LObj  LO::S_GROUND_CLIMB_L, 1, 11
  LObjN LO::R_GROUND,         0, 12, 2, 0
  LObj  LO::S_GROUND_CLIMB_L, 1, 10
  LObjN LO::R_GROUND,         0, 11, 1, 0
  LObj  LO::S_GROUND_CLIMB_L, 1, 9
  LObj  LO::S_GROUND,         0, 10
  LObjN LO::R_GROUND,         1, 9, 10, 3
  LObjN LO::R_BRICK,          1, 5, 3, 0
  LObjN LO::R_COIN,           1, 3, 1, 0
  LObj  LO::S_GROUND_CLIMB_L, 6, 8
  LObj  LO::S_GROUND_CLIMB_L, 1, 7
  LObj  LO::S_GROUND,         0, 8
  LObjN LO::R_GROUND,         1, 7, 0, 1
  LObjN LO::WIDE_1,           1, 7, 4, LN1::SOLID_LEDGE
  LObjN LO::R_WATER,          0, 12, 4, 2
  LObjN LO::R_GROUND,         5, 7, 1, 1
  LObjN LO::R_GROUND,         0, 9, 6, 5
  LObjN LO::R_COIN,           3, 6, 2, 0
  LObjN LO::WIDE_1,           4, 9, 7, LN1::SOLID_LEDGE
  LObjN LO::RECT_1,           0, 13, 1, LN1::GROUND, 22
  LObjN LO::TALL_1,           4, 9, 3, LN1::LADDER
  LObj  LO::S_SOLID_ROCK,     3, 8
  LObjN LO::R_SOLID_BLOCK,    1, 2, 0, 4
  LObjN LO::R_GROUND,         0, 7, 6, 3
  LObjN LO::R_BRICK,          1, 3, 4, 0
  LObj  LO::S_HEART,          0, 6
  LObjN LO::RECT_2,           0, 11, 1, LN2::BLACK, 4
  LObj  LO::S_PRIZE,          1, 3
  LObjN LO::R_COIN,           0, 5, 3, 0
  LObj  LO::S_PRIZE,          2, 3
  LObjN LO::WIDE_1,           5, 9, 1, LN1::FALLTHROUGH_LEDGE
  LObj  LO::S_SPRING,         0, 12
  LObjN LO::R_GROUND,         1, 5, 0, 1
  LObjN LO::R_GROUND,         1, 5, 3, 3
  LObjN LO::R_GROUND,         1, 9, 2, 3
  LObjN LO::R_GROUND,         3, 7, 4, 7
  LObjN LO::RECT_1,           5, 13, 1, LN1::GROUND, 19
  LObjN LO::R_SOLID_BLOCK,    5, 7, 5, 0
  LObjN LO::R_COIN,           1, 4, 3, 0
  LObjN LO::R_AIR,            1, 13, 1, 1
  LObjN LO::WIDE_1,           4, 8, 0, LN1::SOLID_LEDGE
  LObj  LO::S_SPRING,         0, 12
  LObjN LO::R_GROUND,         9, 10, 6, 4
  LObj  LO::S_GROUND_CLIMB_L, 0, 10
  LObjN LO::R_BRICK,          2, 7, 2, 0
  LObj  LO::S_COIN,           1, 6
  LObj  LO::S_HEART,          1, 6
  LObj  LO::S_GROUND_CLIMB_R, 2, 10
  LObjN LO::R_COIN,           1, 7, 1, 0
  LObjN LO::WIDE_1,           0, 8, 1, LN1::SOLID_LEDGE
  LObjN LO::R_GROUND,         0, 12, 4, 0
  LObjN LO::R_GROUND,         0, 13, 14, 1
  LObj  LO::S_GROUND_CLIMB_R, 4, 12
  LObjN LO::WIDE_1,           10, 10, 4, LN1::SOLID_LEDGE
  LObjN LO::R_BRICK,          2, 6, 3, 0
  LObjN LO::R_COIN,           0, 8, 1, 1
  LObj  LO::S_PRIZE,          2, 6
  LObjN LO::R_GROUND,         1, 10, 6, 4
  LObjN LO::WIDE_1,           7, 12, 4, LN1::SPIKES
  LObjN LO::R_GROUND,         0, 13, 13, 1
  LObjN LO::R_GROUND,         5, 10, 6, 2
  LObjN LO::R_GROUND,         11, 12, 5, 2
  LObjN LO::R_COIN,           2, 10, 2, 0
  LObjN LO::R_GROUND,         4, 13, 15, 1
  LObj  LO::S_PRIZE,          4, 7
  LObj  LO::S_SPRING,         0, 12
  LObj  LO::S_EXIT_DOOR,      7, 11
  .byt LSpecialCmd, LevelSpecialConfig::MAKE_BACKGROUNDS, $0d, LevelBackgroundId::CLOUDS
  LFinished

sampleSprite:
  LSpr Enemy::GOOMBA,              1,  23,   4
  LSpr Enemy::WAFFLE,              1,  42,   8
  LSpr Enemy::COLLECTIBLE,         0,  61,   3
  LSpr Enemy::OWL,                 1,  70,   3
  LSpr Enemy::GOOMBA,              1,  82,   8
  LSpr Enemy::GOOMBA,              1,  84,   8
  LSpr Enemy::OWL,                 1, 111,   8
  LSpr Enemy::GOOMBA,              0, 115,   6
  LSpr Enemy::SNEAKER,             0, 139,   6
  LSpr Enemy::SNEAKER,             1, 155,   6
  LSpr Enemy::SNEAKER,             1, 173,  12
  LSpr Enemy::OWL,                 0, 203,  11
  .byt 255 ; end
