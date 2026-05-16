#随机打乱魔方 - 不带动画

#scoreboard players set #scrambling_steps int 30

scoreboard players operation #temp__scrambling_steps int = #scrambling_steps int
execute unless score #temp__scrambling_steps int matches 0.. run scoreboard players set #temp__scrambling_steps int 20

data modify storage rubik_cube_3:io store_rotation_2 set from storage rubik_cube_3:io rotation
data modify storage rubik_cube_3:io rotation.interpolation_duration set value 0
data modify storage rubik_cube_3:io rotation.whole_cube set value false
data modify storage rubik_cube_3:io buffer_rotation_opera set value ""
execute if score #temp__scrambling_steps int matches 1.. run function rubik_cube_3:scramble_cube/loop1
data modify storage rubik_cube_3:io rotation set from storage rubik_cube_3:io store_rotation_2

#修改魔方大小-预存数据
data modify storage rubik_cube_3:io temp1 set value [1,0,0,3,0,1,0,3,0,0,1,3,0,0,0,1]
data modify storage rubik_cube_3:io temp1[-1] set from entity @s data.cube_scale
