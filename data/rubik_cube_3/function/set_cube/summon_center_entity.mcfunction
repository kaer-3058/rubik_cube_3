data merge entity @s {data:{rotation_matrix:[1,0,0,0,1,0,0,0,1],formula:[],colloquial_formula:[]},Rotation:[180,0],Tags:["rubik_cube_3_o_14","rubik_cube_3_base","rubik_cube_3_","rubik_cube_3_center","rubik_cube_3_n-s_center","rubik_cube_3_e-w_center","rubik_cube_3_u-d_center","rubik_cube_3.set_cube.start.temp_e"]}

#此UUID传递用于交互系统和魔方(展示实体)之间互相绑定，以增强交互性
#绑定接收者见：function rrr_cube_rooooooll:create/cube
data modify storage rubik_cube_3:io temp_center_entity_uuid set from entity @s UUID
