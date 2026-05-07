## SLERP 向量球面线性插值

#输入单位四元数，从A过渡到B
#A：data modify storage rubik_cube_3:io vec_A set value [0,0,0]
#B：data modify storage rubik_cube_3:io vec_B set value [0,0,0]

#t值(放大10000倍)：scoreboard players set #vec_slerp_t int 10000

#计算：function rubik_cube_3:quaternion_slerp/of_vec_start

#输出：data get storage rubik_cube_3:io vec_C

data modify storage rubik_cube_3:io vec_C set value [0,0,0]

execute store result score #vec1_a int run data get storage rubik_cube_3:io vec_A[0] 10000
execute store result score #vec1_b int run data get storage rubik_cube_3:io vec_A[1] 10000
execute store result score #vec1_c int run data get storage rubik_cube_3:io vec_A[2] 10000

execute store result score #vec2_t int run data get storage rubik_cube_3:io vec_B[0] 10000
execute store result score #vec2_x int run data get storage rubik_cube_3:io vec_B[1] 10000
execute store result score #vec2_y int run data get storage rubik_cube_3:io vec_B[2] 10000

#R^2
scoreboard players operation #tempa int = #vec1_a int
scoreboard players operation #tempb int = #vec1_b int
scoreboard players operation #tempc int = #vec1_c int
scoreboard players operation #tempa int *= #tempa int
scoreboard players operation #tempb int *= #tempb int
scoreboard players operation #tempc int *= #tempc int
scoreboard players operation #tempa int += #tempb int
scoreboard players operation #tempa int += #tempc int

#向量点积 返回100000000倍
#at+bx+cy
scoreboard players operation #temp_a int = #vec1_a int
scoreboard players operation #temp_b int = #vec1_b int
scoreboard players operation #temp_c int = #vec1_c int
scoreboard players operation #temp_a int *= #vec2_t int
scoreboard players operation #temp_b int *= #vec2_x int
scoreboard players operation #temp_c int *= #vec2_y int
scoreboard players operation #temp_a int += #temp_b int
scoreboard players operation #temp_a int += #temp_c int

#求出夹角，arccos
scoreboard players operation #arcsin_cos.input int = #temp_a int
scoreboard players operation #tempa int /= 10000 const
scoreboard players operation #arcsin_cos.input int /= #tempa int
function rubik_cube_3:quaternion_slerp/arccos

#tθ，(1-t)θ
execute store result storage rubik_cube_3:io temp1 double .00000001 run scoreboard players get #vec_slerp_t int
scoreboard players set #temp2 int 10000
execute store result storage rubik_cube_3:io temp2 double .00000001 run scoreboard players operation #temp2 int -= #vec_slerp_t int
execute store result storage rubik_cube_3:io temp3 int 1 run scoreboard players get #arcsin_cos.output int
function rubik_cube_3:quaternion_slerp/macro1 with storage rubik_cube_3:io
function rubik_cube_3:quaternion_slerp/macro2 with storage rubik_cube_3:io

#sin

data modify entity b09e-44-fded-6-efa5ffffef64 Rotation[0] set from storage rubik_cube_3:io temp_t_theta
execute as b09e-44-fded-6-efa5ffffef64 rotated as @s rotated ~ .0 positioned .0 .0 .0 run tp @s ^1.0 ^ ^ ~ ~
data modify storage rubik_cube_3:io temp_sin_t_theta set from entity b09e-44-fded-6-efa5ffffef64 Pos[2]

data modify entity b09e-44-fded-6-efa5ffffef64 Rotation[0] set from storage rubik_cube_3:io temp_1_t_theta
execute as b09e-44-fded-6-efa5ffffef64 rotated as @s rotated ~ .0 positioned .0 .0 .0 run tp @s ^1.0 ^ ^ ~ ~
data modify storage rubik_cube_3:io temp_sin_1_t_theta set from entity b09e-44-fded-6-efa5ffffef64 Pos[2]

execute store result entity b09e-44-fded-6-efa5ffffef64 Rotation[0] float .0001 run scoreboard players get #arcsin_cos.output int
execute as b09e-44-fded-6-efa5ffffef64 rotated as @s rotated ~ .0 positioned .0 .0 .0 run tp @s ^1.0 ^ ^ ~ ~
data modify storage rubik_cube_3:io temp_sin_theta set from entity b09e-44-fded-6-efa5ffffef64 Pos[2]

#插值

execute store result score #vec1_a int run data get storage rubik_cube_3:io vec_A[0] 100000000
execute store result score #vec1_b int run data get storage rubik_cube_3:io vec_A[1] 100000000
execute store result score #vec1_c int run data get storage rubik_cube_3:io vec_A[2] 100000000

execute store result score #vec2_t int run data get storage rubik_cube_3:io vec_B[0] 100000000
execute store result score #vec2_x int run data get storage rubik_cube_3:io vec_B[1] 100000000
execute store result score #vec2_y int run data get storage rubik_cube_3:io vec_B[2] 100000000

function rubik_cube_3:quaternion_slerp/macro4 with storage rubik_cube_3:io

execute store result score #vec1_a int run data get storage rubik_cube_3:io temp_vec1_a
execute store result score #vec1_b int run data get storage rubik_cube_3:io temp_vec1_b
execute store result score #vec1_c int run data get storage rubik_cube_3:io temp_vec1_c

execute store result score #vec2_t int run data get storage rubik_cube_3:io temp_vec2_t
execute store result score #vec2_x int run data get storage rubik_cube_3:io temp_vec2_x
execute store result score #vec2_y int run data get storage rubik_cube_3:io temp_vec2_y

#输出
scoreboard players operation #vec1_a int += #vec2_t int
scoreboard players operation #vec1_b int += #vec2_x int
scoreboard players operation #vec1_c int += #vec2_y int
execute store result score #temp_temp_sin_theta int run data get storage rubik_cube_3:io temp_sin_theta 10000
execute store result storage rubik_cube_3:io vec_C[0] double .0001 run scoreboard players operation #vec1_a int /= #temp_temp_sin_theta int
execute store result storage rubik_cube_3:io vec_C[1] double .0001 run scoreboard players operation #vec1_b int /= #temp_temp_sin_theta int
execute store result storage rubik_cube_3:io vec_C[2] double .0001 run scoreboard players operation #vec1_c int /= #temp_temp_sin_theta int
