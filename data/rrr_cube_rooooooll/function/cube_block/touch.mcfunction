#若玩家手持交互物品则执行交互命令
scoreboard players set #temp int 0
execute on target if items entity @s weapon.mainhand paper[custom_data~{is_rubik_cube_item:true}] run scoreboard players set #temp int 1
execute if score #temp int matches 1 run return run tag @s add rubik_cube_3_test_4

#用于函数之间通信的临时tag
execute on target run tag @s add rubik_cube_3_player_rotation_cube


#测试模式才会显示
execute if score testmode rrrcubecore_timeount matches 2.. run tellraw @p[tag=rrr_cube_user] [{nbt:data,entity:"@s"}]

data remove entity @s interaction

#给核心数据
data modify entity @n[tag=rrr_cube_core,type=interaction] data.turnturn_cube append from entity @s data

#让核心尝试播放旋转数据
execute as @n[tag=rrr_cube_core,type=interaction] run function rrr_cube_rooooooll:cube_core/ready


execute on target run tag @s remove rubik_cube_3_player_rotation_cube
