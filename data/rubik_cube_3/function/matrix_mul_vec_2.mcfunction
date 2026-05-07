##3*3矩阵乘三维列向量 C*D

# function rubik_cube_3:matrix_mul_vec_2

execute store result score #c_0 int run data get storage rubik_cube_3:io temp_C[0]
execute store result score #c_1 int run data get storage rubik_cube_3:io temp_C[1]
execute store result score #c_2 int run data get storage rubik_cube_3:io temp_C[2]
execute store result score #c_3 int run data get storage rubik_cube_3:io temp_C[3]
execute store result score #c_4 int run data get storage rubik_cube_3:io temp_C[4]
execute store result score #c_5 int run data get storage rubik_cube_3:io temp_C[5]
execute store result score #c_6 int run data get storage rubik_cube_3:io temp_C[6]
execute store result score #c_7 int run data get storage rubik_cube_3:io temp_C[7]
execute store result score #c_8 int run data get storage rubik_cube_3:io temp_C[8]

execute store result score #d_0 int run data get storage rubik_cube_3:io temp_D[0] 10000
execute store result score #d_1 int run data get storage rubik_cube_3:io temp_D[1] 10000
execute store result score #d_2 int run data get storage rubik_cube_3:io temp_D[2] 10000

scoreboard players operation #c0 int = #c_0 int
scoreboard players operation #c1 int = #c_1 int
scoreboard players operation #c2 int = #c_2 int
scoreboard players operation #c0 int *= #d_0 int
scoreboard players operation #c1 int *= #d_1 int
scoreboard players operation #c2 int *= #d_2 int
scoreboard players operation #c0 int += #c1 int
execute store result storage rubik_cube_3:io temp_D[0] double .00000001 run scoreboard players operation #c0 int += #c2 int

scoreboard players operation #c0 int = #c_3 int
scoreboard players operation #c1 int = #c_4 int
scoreboard players operation #c2 int = #c_5 int
scoreboard players operation #c0 int *= #d_0 int
scoreboard players operation #c1 int *= #d_1 int
scoreboard players operation #c2 int *= #d_2 int
scoreboard players operation #c0 int += #c1 int
execute store result storage rubik_cube_3:io temp_D[1] double .00000001 run scoreboard players operation #c0 int += #c2 int

scoreboard players operation #c0 int = #c_6 int
scoreboard players operation #c1 int = #c_7 int
scoreboard players operation #c2 int = #c_8 int
scoreboard players operation #c0 int *= #d_0 int
scoreboard players operation #c1 int *= #d_1 int
scoreboard players operation #c2 int *= #d_2 int
scoreboard players operation #c0 int += #c1 int
execute store result storage rubik_cube_3:io temp_D[2] double .00000001 run scoreboard players operation #c0 int += #c2 int
