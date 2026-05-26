#找到追踪位置的魔方，若其正在计算旋转(含有临时tag)，则获取旋转符号
data modify entity @s Pos set from storage rubik_cube_3:io temp_components."minecraft:custom_data".target_pos
execute at @s as @n[type=text_display,tag=rubik_cube_3_center,tag=r_temp_tt,distance=...1] run data modify storage rubik_cube_3:io temp_components."minecraft:custom_data".formula append from entity @s data.formula[-1]
tp .0 .0 .0
