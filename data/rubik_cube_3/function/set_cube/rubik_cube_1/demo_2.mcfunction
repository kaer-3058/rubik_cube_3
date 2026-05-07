#这是一个demo，一个一阶魔方  - 方块位置在方块正中心，translate已偏移

#放置：execute positioned x y z run function rubik_cube_3:set_cube/rubik_cube_1/demo_2
#放置时需要传入执行位置

# 清除：execute positioned x y z run kill @e[type=text_display,sort=nearest,tag=rubik_demo,distance=..2]

summon text_display ~ ~ ~ {background:0,text:[" ",{object:"atlas",atlas:"blocks",sprite:"block/black_concrete"}],transformation:      [  5,  0,  0, -0.375,  0,  5,  0, -0.75,  0,  0,  5,  0.5,    0, 0, 0, 1 ], Rotation:[180,0],Tags:["rubik_cube_3_","rubik_cube_3_o_01_n","rubik_demo"]}
summon text_display ~ ~ ~ {background:0,text:[" ",{object:"atlas",atlas:"blocks",sprite:"block/black_concrete"}],transformation:      [ -5,  0,  0,  0.375,  0,  5,  0, -0.75,  0,  0, -5, -0.5,    0, 0, 0, 1 ], Rotation:[180,0],Tags:["rubik_cube_3_","rubik_cube_3_o_01_s","rubik_demo"]}
summon text_display ~ ~ ~ {background:0,text:[" ",{object:"atlas",atlas:"blocks",sprite:"block/black_concrete"}],transformation:      [  0,  0, -5, -0.5,    0,  5,  0 ,-0.75,  5,  0,  0, -0.375,  0, 0, 0, 1 ], Rotation:[180,0],Tags:["rubik_cube_3_","rubik_cube_3_o_01_e","rubik_demo"]}
summon text_display ~ ~ ~ {background:0,text:[" ",{object:"atlas",atlas:"blocks",sprite:"block/black_concrete"}],transformation:      [  0,  0,  5,  0.5,    0,  5,  0, -0.75, -5,  0,  0,  0.375,  0, 0, 0, 1 ], Rotation:[180,0],Tags:["rubik_cube_3_","rubik_cube_3_o_01_w","rubik_demo"]}
summon text_display ~ ~ ~ {background:0,text:[" ",{object:"atlas",atlas:"blocks",sprite:"block/black_concrete"}],transformation:      [  5,  0,  0, -0.375,  0,  0,  5,  0.5,   0, -5,  0,  0.75,   0, 0, 0, 1 ], Rotation:[180,0],Tags:["rubik_cube_3_","rubik_cube_3_o_01_u","rubik_demo"]}
summon text_display ~ ~ ~ {background:0,text:[" ",{object:"atlas",atlas:"blocks",sprite:"block/black_concrete"}],transformation:      [  5,  0,  0, -0.375,  0,  0, -5, -0.5,   0,  5,  0, -0.75,   0, 0, 0, 1 ], Rotation:[180,0],Tags:["rubik_cube_3_","rubik_cube_3_o_01_d","rubik_demo"]}

summon text_display ~ ~ ~ {background:0,text:[" ",{object:"atlas",atlas:"blocks",sprite:"block/light_blue_concrete"}],transformation: [  4.375,  0,  0,     -0.328125,  0,  4.375,  0,     -0.65625,  0,      0,      4.375,  0.501,     0, 0, 0, 1 ], Rotation:[180,0],Tags:["rubik_cube_3_","rubik_cube_3_o_02_n","rubik_demo"]}
summon text_display ~ ~ ~ {background:0,text:[" ",{object:"atlas",atlas:"blocks",sprite:"block/lime_concrete"}],transformation:       [ -4.375,  0,  0,      0.328125,  0,  4.375,  0,     -0.65625,  0,      0,     -4.375, -0.501,     0, 0, 0, 1 ], Rotation:[180,0],Tags:["rubik_cube_3_","rubik_cube_3_o_02_s","rubik_demo"]}
summon text_display ~ ~ ~ {background:0,text:[" ",{object:"atlas",atlas:"blocks",sprite:"block/orange_concrete"}],transformation:     [  0,      0, -4.375, -0.501,     0,  4.375,  0 ,    -0.65625,  4.375,  0,      0,     -0.328125,  0, 0, 0, 1 ], Rotation:[180,0],Tags:["rubik_cube_3_","rubik_cube_3_o_02_e","rubik_demo"]}
summon text_display ~ ~ ~ {background:0,text:[" ",{object:"atlas",atlas:"blocks",sprite:"block/red_concrete"}],transformation:        [  0,      0,  4.375,  0.501,     0,  4.375,  0,     -0.65625, -4.375,  0,      0,      0.328125,  0, 0, 0, 1 ], Rotation:[180,0],Tags:["rubik_cube_3_","rubik_cube_3_o_02_w","rubik_demo"]}
summon text_display ~ ~ ~ {background:0,text:[" ",{object:"atlas",atlas:"blocks",sprite:"block/yellow_concrete"}],transformation:     [  4.375,  0,  0,     -0.328125,  0,  0,      4.375,  0.501,    0,     -4.375,  0,      0.65625,   0, 0, 0, 1 ], Rotation:[180,0],Tags:["rubik_cube_3_","rubik_cube_3_o_02_u","rubik_demo"]}
summon text_display ~ ~ ~ {background:0,text:[" ",{object:"atlas",atlas:"blocks",sprite:"block/white_concrete"}],transformation:      [  4.375,  0,  0,     -0.328125,  0,  0,     -4.375, -0.501,    0,      4.375,  0,     -0.65625,   0, 0, 0, 1 ], Rotation:[180,0],Tags:["rubik_cube_3_","rubik_cube_3_o_02_d","rubik_demo"]}
