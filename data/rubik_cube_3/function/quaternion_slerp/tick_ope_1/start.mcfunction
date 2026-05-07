##手动计算魔方的插值动画 - tick

data modify storage rubik_cube_3:io manual_interpolation set from entity @s data.manual_interpolation
execute store result score #temp_timing_max int run data get storage rubik_cube_3:io manual_interpolation.timing_max
execute store result score #temp_timing int run data get storage rubik_cube_3:io manual_interpolation.timing
execute store result entity @s data.manual_interpolation.timing int 1 run scoreboard players add #temp_timing int 1

#缩放因子
data modify storage rubik_cube_3:io temp1 set value [1,0,0,3,0,1,0,0,0,0,1,0,0,0,0,1]
data modify storage rubik_cube_3:io temp1[-1] set from storage rubik_cube_3:io cube_scale
data modify entity 4949f27b-5362-4e14-be04-fd7b9272a414 transformation set from storage rubik_cube_3:io temp1
data modify storage rubik_cube_3:io temp_1_scale set from entity 4949f27b-5362-4e14-be04-fd7b9272a414 transformation.translation[0]

#计时已满则把过渡状态的旋转数据改为已经算好的旋转数据
execute unless score #temp_timing int < #temp_timing_max int run data modify storage rubik_cube_3:io manual_interpolation set from entity @s data.manual_interpolation
execute unless score #temp_timing int < #temp_timing_max int run return run function rubik_cube_3:rotation/3_spe

#计时没满则进行插值
execute if score #temp_timing int < #temp_timing_max int run function rubik_cube_3:quaternion_slerp/tick_ope_1/timing
