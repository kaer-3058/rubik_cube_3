data modify storage rubik_cube_3:io store_rotation_2 set from storage rubik_cube_3:io rotation
data modify storage rubik_cube_3:io rotation merge from entity @s data.rotation
data modify storage rubik_cube_3:io buffer_rotation_opera set from entity @s data.rotation.buffer_rotation_opera

data modify storage rubik_cube_3:io temp_scramble_list set value [{face:"up", clockwise:true},{face:"up", clockwise:false},{face:"down", clockwise:true},{face:"down", clockwise:false},{face:"north", clockwise:true},{face:"north", clockwise:false},{face:"south", clockwise:true},{face:"south", clockwise:false},{face:"east", clockwise:true},{face:"east", clockwise:false},{face:"west", clockwise:true},{face:"west", clockwise:false},{face:"u-d_center", clockwise:true},{face:"u-d_center", clockwise:false},{face:"n-s_center", clockwise:true},{face:"n-s_center", clockwise:false},{face:"e-w_center", clockwise:true},{face:"e-w_center", clockwise:false}]
execute if data storage rubik_cube_3:io buffer_rotation_opera{face:"up"} run data remove storage rubik_cube_3:io temp_scramble_list[1]
execute if data storage rubik_cube_3:io buffer_rotation_opera{face:"up"} run data remove storage rubik_cube_3:io temp_scramble_list[0]
execute if data storage rubik_cube_3:io buffer_rotation_opera{face:"down"} run data remove storage rubik_cube_3:io temp_scramble_list[3]
execute if data storage rubik_cube_3:io buffer_rotation_opera{face:"down"} run data remove storage rubik_cube_3:io temp_scramble_list[2]
execute if data storage rubik_cube_3:io buffer_rotation_opera{face:"north"} run data remove storage rubik_cube_3:io temp_scramble_list[5]
execute if data storage rubik_cube_3:io buffer_rotation_opera{face:"north"} run data remove storage rubik_cube_3:io temp_scramble_list[4]
execute if data storage rubik_cube_3:io buffer_rotation_opera{face:"south"} run data remove storage rubik_cube_3:io temp_scramble_list[7]
execute if data storage rubik_cube_3:io buffer_rotation_opera{face:"south"} run data remove storage rubik_cube_3:io temp_scramble_list[6]
execute if data storage rubik_cube_3:io buffer_rotation_opera{face:"east"} run data remove storage rubik_cube_3:io temp_scramble_list[9]
execute if data storage rubik_cube_3:io buffer_rotation_opera{face:"east"} run data remove storage rubik_cube_3:io temp_scramble_list[8]
execute if data storage rubik_cube_3:io buffer_rotation_opera{face:"west"} run data remove storage rubik_cube_3:io temp_scramble_list[11]
execute if data storage rubik_cube_3:io buffer_rotation_opera{face:"west"} run data remove storage rubik_cube_3:io temp_scramble_list[10]
execute if data storage rubik_cube_3:io buffer_rotation_opera{face:"u-d_center"} run data remove storage rubik_cube_3:io temp_scramble_list[13]
execute if data storage rubik_cube_3:io buffer_rotation_opera{face:"u-d_center"} run data remove storage rubik_cube_3:io temp_scramble_list[12]
execute if data storage rubik_cube_3:io buffer_rotation_opera{face:"n-s_center"} run data remove storage rubik_cube_3:io temp_scramble_list[15]
execute if data storage rubik_cube_3:io buffer_rotation_opera{face:"n-s_center"} run data remove storage rubik_cube_3:io temp_scramble_list[14]
execute if data storage rubik_cube_3:io buffer_rotation_opera{face:"e-w_center"} run data remove storage rubik_cube_3:io temp_scramble_list[17]
execute if data storage rubik_cube_3:io buffer_rotation_opera{face:"e-w_center"} run data remove storage rubik_cube_3:io temp_scramble_list[16]

execute store result storage rubik_cube_3:io sstemp1 int .000001 run random value 0..15999999
execute store result score #temp1 int run data get storage rubik_cube_3:io sstemp1
execute if score #temp1 int matches 0 run data modify storage rubik_cube_3:io rotation merge from storage rubik_cube_3:io temp_scramble_list[0]
execute if score #temp1 int matches 1 run data modify storage rubik_cube_3:io rotation merge from storage rubik_cube_3:io temp_scramble_list[1]
execute if score #temp1 int matches 2 run data modify storage rubik_cube_3:io rotation merge from storage rubik_cube_3:io temp_scramble_list[2]
execute if score #temp1 int matches 3 run data modify storage rubik_cube_3:io rotation merge from storage rubik_cube_3:io temp_scramble_list[3]
execute if score #temp1 int matches 4 run data modify storage rubik_cube_3:io rotation merge from storage rubik_cube_3:io temp_scramble_list[4]
execute if score #temp1 int matches 5 run data modify storage rubik_cube_3:io rotation merge from storage rubik_cube_3:io temp_scramble_list[5]
execute if score #temp1 int matches 6 run data modify storage rubik_cube_3:io rotation merge from storage rubik_cube_3:io temp_scramble_list[6]
execute if score #temp1 int matches 7 run data modify storage rubik_cube_3:io rotation merge from storage rubik_cube_3:io temp_scramble_list[7]
execute if score #temp1 int matches 8 run data modify storage rubik_cube_3:io rotation merge from storage rubik_cube_3:io temp_scramble_list[8]
execute if score #temp1 int matches 9 run data modify storage rubik_cube_3:io rotation merge from storage rubik_cube_3:io temp_scramble_list[9]
execute if score #temp1 int matches 10 run data modify storage rubik_cube_3:io rotation merge from storage rubik_cube_3:io temp_scramble_list[10]
execute if score #temp1 int matches 11 run data modify storage rubik_cube_3:io rotation merge from storage rubik_cube_3:io temp_scramble_list[11]
execute if score #temp1 int matches 12 run data modify storage rubik_cube_3:io rotation merge from storage rubik_cube_3:io temp_scramble_list[12]
execute if score #temp1 int matches 13 run data modify storage rubik_cube_3:io rotation merge from storage rubik_cube_3:io temp_scramble_list[13]
execute if score #temp1 int matches 14 run data modify storage rubik_cube_3:io rotation merge from storage rubik_cube_3:io temp_scramble_list[14]
execute if score #temp1 int matches 15 run data modify storage rubik_cube_3:io rotation merge from storage rubik_cube_3:io temp_scramble_list[15]
data modify entity @s data.rotation.buffer_rotation_opera set from storage rubik_cube_3:io rotation
function rubik_cube_3:rotation/start

#修正魔方大小
execute store result score #temp1 int run data get entity @s data.cube_scale 1000
execute unless score #temp1 int matches 1000 on passengers run function rubik_cube_3:scramble_cube/2

data modify storage rubik_cube_3:io rotation set from storage rubik_cube_3:io store_rotation_2
scoreboard players remove @s store_scrambling_steps 1
