scoreboard objectives add int dummy
scoreboard objectives add const dummy

#存储魔方的打乱步数
scoreboard objectives add store_scrambling_steps dummy
scoreboard objectives add entity_time_1 dummy

#魔方播放旋转录像的计时
scoreboard objectives add entity_time_2 dummy

#魔方实体是否要进行插值动画
scoreboard objectives add rubik_cube_3_interpolat_durat dummy

#玩家是否在"使用"物品
scoreboard objectives add rubik_cube_3_item_function_set dummy

#玩家是否刚按下潜行
scoreboard objectives add player_once_input_seank dummy

#常数
scoreboard players set 10000 const 10000
scoreboard players set 32768 const 32768
scoreboard players set 559 const 559
scoreboard players set 10 const 10
scoreboard players set 9 const 9
scoreboard players set 8 const 8
scoreboard players set 7 const 7
scoreboard players set 6 const 6
scoreboard players set 5 const 5
scoreboard players set 4 const 4
scoreboard players set 3 const 3
scoreboard players set 2 const 2
scoreboard players set 1 const 1
scoreboard players set 0 const 0
scoreboard players set -1 const -1

gamerule max_command_forks 100000000
gamerule max_command_sequence_length 100000000

forceload add -1 -1 1 1

#世界实体 UUID：b09e-44-fded-6-efa5ffffef64
summon minecraft:marker .0 .0 .0 {UUID:[I;45214,4521453,454565,-4252],CustomName:{"text":"large_number.world_entity"}}

#用于计算的展示实体 UUID：4949f27b-5362-4e14-be04-fd7b9272a414
kill 4949f27b-5362-4e14-be04-fd7b9272a414
summon text_display .0 .0 .0 {UUID:[I;1229582971,1398951444,-1106969221,-1837980652]}

data modify storage rubik_cube_3:io buffer_all_xyz set value [0d,0d,0d]


forceload add -29999982 22022220

#用于暂存物品(单个)的唱片机
setblock -29999984 -60 22022220 minecraft:stone
setblock -29999984 -60 22022220 minecraft:jukebox{RecordItem:{id:"minecraft:stone",count:1}}

#用于读物品栏的桶
fill -29999982 -60 22022220 -29999982 -59 22022220 minecraft:stone
fill -29999982 -60 22022220 -29999982 -59 22022220 minecraft:barrel

#物品 563adc0-fffd-c986-fd14-59f186a8aaa
summon minecraft:item -29999982.5 -63 22022223.5 {UUID:[I;90418624,-145018,-49019489,409635498],Invulnerable:1b,NoGravity:1b,Item:{id:"minecraft:stone",count:1},PickupDelay:32767s,Age:-32768s}
