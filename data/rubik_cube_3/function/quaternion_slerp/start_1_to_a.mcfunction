## SLERP 四元数球面线性插值 - 从1到A

#原理见：https://en.wikipedia.org/wiki/Spherical_linear_interpolation

#输入单位四元数，从1过渡到A
#A：data modify storage rubik_cube_3:io quat_A set value [0,0,0,1]

#t值(放大10000倍)：scoreboard players set #quat_slerp_t int 10000

#计算：function rubik_cube_3:quaternion_slerp/start_1_to_a

#输出：data get storage rubik_cube_3:io quat_C

data modify storage rubik_cube_3:io quat_C set value [0,0,0,1]

execute store result score #quat1_a int run data get storage rubik_cube_3:io quat_A[0] 10000
execute store result score #quat1_b int run data get storage rubik_cube_3:io quat_A[1] 10000
execute store result score #quat1_c int run data get storage rubik_cube_3:io quat_A[2] 10000
execute store result score #quat1_d int run data get storage rubik_cube_3:io quat_A[3] 10000

#slerp最短路径问题
#若q1·q2点积结果为负，则把q2取反，再进行slerp
execute if score #quat1_d int matches ..-1 run function rubik_cube_3:quaternion_slerp/test_shortest_path/1_to_a

#arccos
scoreboard players operation #arcsin_cos.input int = #quat1_d int
function rubik_cube_3:quaternion_slerp/arccos

#tθ，(1-t)θ
execute store result storage rubik_cube_3:io temp1 double .00000001 run scoreboard players get #quat_slerp_t int
scoreboard players set #temp2 int 10000
execute store result storage rubik_cube_3:io temp2 double .00000001 run scoreboard players operation #temp2 int -= #quat_slerp_t int
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

execute store result score #temp_sin_1_t_theta int run data get storage rubik_cube_3:io temp_sin_1_t_theta 100000000
execute store result score #temp_sin_t_theta int run data get storage rubik_cube_3:io temp_sin_t_theta 100000000
execute store result score #temp_sin_theta int run data get storage rubik_cube_3:io temp_sin_theta 10000
scoreboard players operation #temp_sin_1_t_theta int /= #temp_sin_theta int
scoreboard players operation #temp_sin_t_theta int /= #temp_sin_theta int
scoreboard players operation #temp_sin_1_t_theta int *= 10000 const

scoreboard players operation #quat1_a int *= #temp_sin_t_theta int
scoreboard players operation #quat1_b int *= #temp_sin_t_theta int
scoreboard players operation #quat1_c int *= #temp_sin_t_theta int
scoreboard players operation #quat1_d int *= #temp_sin_t_theta int

#输出
execute store result storage rubik_cube_3:io quat_C[0] double .00000001 run scoreboard players get #quat1_a int
execute store result storage rubik_cube_3:io quat_C[1] double .00000001 run scoreboard players get #quat1_b int
execute store result storage rubik_cube_3:io quat_C[2] double .00000001 run scoreboard players get #quat1_c int
execute store result storage rubik_cube_3:io quat_C[3] double .00000001 run scoreboard players operation #quat1_d int += #temp_sin_1_t_theta int
