#计算平面向量的方向角。
#给出两个值，计算该坐标下的反正切值
#输入：#y int  #x int
#公式：atan2d(y,x)
#取自：卡儿的数学库

#计算：
#execute as b09e-44-fded-6-efa5ffffef64 run function large_number:math_trifs/atan2

#输出(角度制)：
#scoreboard players get #arcsin_cos.output int

tp @s .0 .0 .0 .0 .0
execute store result storage rubik_cube_3:io buffer_all_xyz[0] double -0.0001 run scoreboard players get #y int
execute store result storage rubik_cube_3:io buffer_all_xyz[2] double 0.0001 run scoreboard players get #x int
data modify entity @s Pos set from storage rubik_cube_3:io buffer_all_xyz
execute positioned .0 .0 .0 facing entity @s feet rotated ~ .0 run tp @s .0 .0 .0 ~ ~

execute store result score #arcsin_cos.output int run data get entity @s Rotation[0] 10000
execute if score #x int matches 0.. if score #y int matches 0.. unless score #arcsin_cos.output int matches 0..900000 run scoreboard players add #arcsin_cos.output int 3600000
execute if score #x int matches ..-1 if score #y int matches 0.. unless score #arcsin_cos.output int matches 900000..1800000 run scoreboard players add #arcsin_cos.output int 3600000
execute if score #x int matches ..-1 if score #y int matches ..-1 unless score #arcsin_cos.output int matches -1800000..-900000 run scoreboard players remove #arcsin_cos.output int 3600000
execute if score #x int matches 0.. if score #y int matches ..-1 unless score #arcsin_cos.output int matches -900000..0 run scoreboard players remove #arcsin_cos.output int 3600000
execute if score #arcsin_cos.output int matches -1800000 run scoreboard players set #arcsin_cos.output int 1800000
