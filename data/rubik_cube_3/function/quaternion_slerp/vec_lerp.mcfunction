#向量线性插值

#t值(放大10000倍)：scoreboard players set #quat_slerp_t int 10000

#计算：function rubik_cube_3:quaternion_slerp/vec_lerp

#输出：data get storage rubik_cube_3:io vec_C

execute store result score #vec1_a int run data get storage rubik_cube_3:io vec_A[0] 10000
execute store result score #vec1_b int run data get storage rubik_cube_3:io vec_A[1] 10000
execute store result score #vec1_c int run data get storage rubik_cube_3:io vec_A[2] 10000

execute store result score #vec2_t int run data get storage rubik_cube_3:io vec_B[0] 10000
execute store result score #vec2_x int run data get storage rubik_cube_3:io vec_B[1] 10000
execute store result score #vec2_y int run data get storage rubik_cube_3:io vec_B[2] 10000

scoreboard players set #temp_1_t int 10000
scoreboard players operation #temp_1_t int -= #quat_slerp_t int

scoreboard players operation #vec1_a int *= #temp_1_t int
scoreboard players operation #vec1_b int *= #temp_1_t int
scoreboard players operation #vec1_c int *= #temp_1_t int
scoreboard players operation #vec2_t int *= #quat_slerp_t int
scoreboard players operation #vec2_x int *= #quat_slerp_t int
scoreboard players operation #vec2_y int *= #quat_slerp_t int

#输出
data modify storage rubik_cube_3:io vec_C set value [0,0,0]
execute store result storage rubik_cube_3:io vec_C[0] double .00000001 run scoreboard players operation #vec1_a int += #vec2_t int
execute store result storage rubik_cube_3:io vec_C[1] double .00000001 run scoreboard players operation #vec1_b int += #vec2_x int
execute store result storage rubik_cube_3:io vec_C[2] double .00000001 run scoreboard players operation #vec1_c int += #vec2_y int
