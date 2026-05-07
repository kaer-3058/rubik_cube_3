#随机打乱魔方 - 带动画

#scoreboard players set #scrambling_steps int 30

execute unless score #scrambling_steps int matches 0.. run scoreboard players set #scrambling_steps int 20

tag @s add rubik_cube_3_scrambling
scoreboard players operation @s store_scrambling_steps = #scrambling_steps int
data modify entity @s data merge value {rotation:{interpolation_duration:4,whole_cube:false,buffer_rotation_opera:""}}
scoreboard players set @s entity_time_1 100000000
