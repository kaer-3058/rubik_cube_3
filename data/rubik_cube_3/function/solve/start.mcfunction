##魔方复原

#对于有显示数据的展示实体进行处理
data modify storage rubik_cube_3:io temp1 set from entity @s data.rubik_cube_3_on_pass_order
scoreboard players set #temp1 int 0
execute store result score #temp1 int run data get storage rubik_cube_3:io temp1
execute if score #temp1 int matches 1.. as @s[tag=!rubik_cube_3_base] run function rubik_cube_3:solve/macro1 with storage rubik_cube_3:io

#对于没有显示数据，仅用于计算旋转的实体进行处理
execute as @s[tag=rubik_cube_3_base] run function rubik_cube_3:solve/tree_2

#载入矩阵与位移修正
execute as @s[tag=!rubik_cube_3_base] run function rubik_cube_3:set_cube/2

#修改大小
execute as @s[tag=!rubik_cube_3_base] run function rubik_cube_3:modify_scale/2_spe.2

scoreboard players reset @s store_scrambling_steps
scoreboard players reset @s entity_time_1
