#测试模式才会显示
execute if score testmode rrrcubecore_timeount matches 2.. run tellraw @p[tag=rrr_cube_user] [{nbt:data,entity:"@s"}]

data remove entity @s interaction

#给核心数据
data modify entity @n[tag=rrr_cube_core,type=interaction] data.turnturn_cube append from entity @s data

#让核心尝试播放旋转数据
execute as @n[tag=rrr_cube_core,type=interaction] run function rrr_cube_rooooooll:cube_core/ready