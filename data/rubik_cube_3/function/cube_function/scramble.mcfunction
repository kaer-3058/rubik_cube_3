execute at @n[type=text_display,tag=rubik_cube_3_center,distance=..2] if entity @e[type=text_display,tag=rubik_cube_3_,distance=...01,scores={rubik_cube_3_interpolat_durat=1},limit=1] run return fail

#随机打乱魔方 - 不带动画
execute at @n[type=text_display,tag=rubik_cube_3_center,distance=..2] run function rubik_cube_3:scramble_cube/start

#修改魔方大小
data modify storage rubik_cube_3:io temp1 set value [1,0,0,3,0,1,0,3,0,0,1,3,0,0,0,1]
data modify storage rubik_cube_3:io temp1[-1] set from storage rubik_cube_3:io cube_scale
data modify entity 4949f27b-5362-4e14-be04-fd7b9272a414 transformation set from storage rubik_cube_3:io temp1
execute at @n[type=text_display,tag=rubik_cube_3_center,distance=..2] as @e[type=text_display,tag=rubik_cube_3_,distance=...01] run function rubik_cube_3:modify_scale/2_spe
