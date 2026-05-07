scoreboard objectives add int dummy
scoreboard objectives add const dummy

#存储魔方的打乱步数
scoreboard objectives add store_scrambling_steps dummy
scoreboard objectives add entity_time_1 dummy

#魔方实体是否要进行插值动画
scoreboard objectives add rubik_cube_3_interpolat_durat dummy

#常数
scoreboard players set 10000 const 10000
scoreboard players set 32768 const 32768
scoreboard players set 559 const 559
scoreboard players set 10 const 10
scoreboard players set 5 const 5
scoreboard players set 4 const 4
scoreboard players set 3 const 3
scoreboard players set 2 const 2
scoreboard players set -1 const -1

gamerule max_command_forks 100000000
gamerule max_command_sequence_length 100000000

forceload add -1 -1 1 1

#世界实体 UUID：b09e-44-fded-6-efa5ffffef64
summon minecraft:marker .0 .0 .0 {UUID:[I;45214,4521453,454565,-4252],CustomName:{"text":"large_number.world_entity"}}

#用于计算的展示实体 UUID：4949f27b-5362-4e14-be04-fd7b9272a414
summon block_display .0 .0 .0 {UUID:[I;1229582971,1398951444,-1106969221,-1837980652]}

data modify storage rubik_cube_3:io buffer_all_xyz set value [0d,0d,0d]
