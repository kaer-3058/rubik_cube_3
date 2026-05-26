#载入矩阵与位移修正
execute as @s[tag=!rubik_cube_3_base,tag=!rubik_glowing] run function rubik_cube_3:set_cube/write_matrix

#骑乘关系
execute as @s[tag=!rubik_cube_3_center] run function rubik_cube_3:set_cube/ride_on_center
