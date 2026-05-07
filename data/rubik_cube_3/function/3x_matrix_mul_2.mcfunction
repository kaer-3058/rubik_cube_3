##旋转矩阵乘法 A*B

# data modify storage rubik_cube_3:io temp_A set value [7, 3, 5, 2, -2, 6, 11, 1, 4]
# data modify storage rubik_cube_3:io temp_B set value [-9, 12, 17, 1, 4, 10, 9, 4, -15]
# function rubik_cube_3:3x_matrix_mul

execute store result score #a_0 int run data get storage rubik_cube_3:io temp_A[0]
execute store result score #a_1 int run data get storage rubik_cube_3:io temp_A[1]
execute store result score #a_2 int run data get storage rubik_cube_3:io temp_A[2]
execute store result score #a_3 int run data get storage rubik_cube_3:io temp_A[3]
execute store result score #a_4 int run data get storage rubik_cube_3:io temp_A[4]
execute store result score #a_5 int run data get storage rubik_cube_3:io temp_A[5]
execute store result score #a_6 int run data get storage rubik_cube_3:io temp_A[6]
execute store result score #a_7 int run data get storage rubik_cube_3:io temp_A[7]
execute store result score #a_8 int run data get storage rubik_cube_3:io temp_A[8]

execute store result score #b_0 int run data get storage rubik_cube_3:io temp_B[0] 1000
execute store result score #b_1 int run data get storage rubik_cube_3:io temp_B[1] 1000
execute store result score #b_2 int run data get storage rubik_cube_3:io temp_B[2] 1000
execute store result score #b_3 int run data get storage rubik_cube_3:io temp_B[3] 1000
execute store result score #b_4 int run data get storage rubik_cube_3:io temp_B[4] 1000
execute store result score #b_5 int run data get storage rubik_cube_3:io temp_B[5] 1000
execute store result score #b_6 int run data get storage rubik_cube_3:io temp_B[6] 1000
execute store result score #b_7 int run data get storage rubik_cube_3:io temp_B[7] 1000
execute store result score #b_8 int run data get storage rubik_cube_3:io temp_B[8] 1000

#c_0
scoreboard players operation #a0 int = #a_0 int
scoreboard players operation #a1 int = #a_1 int
scoreboard players operation #a2 int = #a_2 int
scoreboard players operation #a0 int *= #b_0 int
scoreboard players operation #a1 int *= #b_3 int
scoreboard players operation #a2 int *= #b_6 int
scoreboard players operation #a0 int += #a1 int
execute store result storage rubik_cube_3:io temp_A[0] double .001 run scoreboard players operation #a0 int += #a2 int

#c_1
scoreboard players operation #a0 int = #a_0 int
scoreboard players operation #a1 int = #a_1 int
scoreboard players operation #a2 int = #a_2 int
scoreboard players operation #a0 int *= #b_1 int
scoreboard players operation #a1 int *= #b_4 int
scoreboard players operation #a2 int *= #b_7 int
scoreboard players operation #a0 int += #a1 int
execute store result storage rubik_cube_3:io temp_A[1] double .001 run scoreboard players operation #a0 int += #a2 int

#c_2
scoreboard players operation #a_0 int *= #b_2 int
scoreboard players operation #a_1 int *= #b_5 int
scoreboard players operation #a_2 int *= #b_8 int
scoreboard players operation #a_0 int += #a_1 int
execute store result storage rubik_cube_3:io temp_A[2] double .001 run scoreboard players operation #a_0 int += #a_2 int

#c_3
scoreboard players operation #a0 int = #a_3 int
scoreboard players operation #a1 int = #a_4 int
scoreboard players operation #a2 int = #a_5 int
scoreboard players operation #a0 int *= #b_0 int
scoreboard players operation #a1 int *= #b_3 int
scoreboard players operation #a2 int *= #b_6 int
scoreboard players operation #a0 int += #a1 int
execute store result storage rubik_cube_3:io temp_A[3] double .001 run scoreboard players operation #a0 int += #a2 int

#c_4
scoreboard players operation #a0 int = #a_3 int
scoreboard players operation #a1 int = #a_4 int
scoreboard players operation #a2 int = #a_5 int
scoreboard players operation #a0 int *= #b_1 int
scoreboard players operation #a1 int *= #b_4 int
scoreboard players operation #a2 int *= #b_7 int
scoreboard players operation #a0 int += #a1 int
execute store result storage rubik_cube_3:io temp_A[4] double .001 run scoreboard players operation #a0 int += #a2 int

#c_5
scoreboard players operation #a_3 int *= #b_2 int
scoreboard players operation #a_4 int *= #b_5 int
scoreboard players operation #a_5 int *= #b_8 int
scoreboard players operation #a_3 int += #a_4 int
execute store result storage rubik_cube_3:io temp_A[5] double .001 run scoreboard players operation #a_3 int += #a_5 int

#c_6
scoreboard players operation #a0 int = #a_6 int
scoreboard players operation #a1 int = #a_7 int
scoreboard players operation #a2 int = #a_8 int
scoreboard players operation #a0 int *= #b_0 int
scoreboard players operation #a1 int *= #b_3 int
scoreboard players operation #a2 int *= #b_6 int
scoreboard players operation #a0 int += #a1 int
execute store result storage rubik_cube_3:io temp_A[6] double .001 run scoreboard players operation #a0 int += #a2 int

#c_7
scoreboard players operation #a0 int = #a_6 int
scoreboard players operation #a1 int = #a_7 int
scoreboard players operation #a2 int = #a_8 int
scoreboard players operation #a0 int *= #b_1 int
scoreboard players operation #a1 int *= #b_4 int
scoreboard players operation #a2 int *= #b_7 int
scoreboard players operation #a0 int += #a1 int
execute store result storage rubik_cube_3:io temp_A[7] double .001 run scoreboard players operation #a0 int += #a2 int

#c_8
scoreboard players operation #a_6 int *= #b_2 int
scoreboard players operation #a_7 int *= #b_5 int
scoreboard players operation #a_8 int *= #b_8 int
scoreboard players operation #a_6 int += #a_7 int
execute store result storage rubik_cube_3:io temp_A[8] double .001 run scoreboard players operation #a_6 int += #a_8 int
