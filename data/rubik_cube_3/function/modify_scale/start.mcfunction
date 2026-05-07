#修改魔方大小

# data modify storage rubik_cube_3:io cube_scale set value 1.0f

data modify storage rubik_cube_3:io temp1 set value [1,0,0,3,0,1,0,3,0,0,1,3,0,0,0,1]
data modify storage rubik_cube_3:io temp1[-1] set from storage rubik_cube_3:io cube_scale
data modify entity 4949f27b-5362-4e14-be04-fd7b9272a414 transformation set from storage rubik_cube_3:io temp1
execute at @n[type=text_display,tag=rubik_cube_3_center,distance=..2] as @e[type=text_display,tag=rubik_cube_3_,distance=...01] run function rubik_cube_3:modify_scale/2


data modify storage rubik_cube_3:io temp1 set value [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3]
data modify storage rubik_cube_3:io temp1[3] set from storage rubik_cube_3:io cube_scale
data modify entity 4949f27b-5362-4e14-be04-fd7b9272a414 transformation set from storage rubik_cube_3:io temp1
data modify storage rubik_cube_3:io temp_scale_div_3 set from entity 4949f27b-5362-4e14-be04-fd7b9272a414 transformation.translation[0]

data modify storage rubik_cube_3:io temp1 set value [0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0]
data modify storage rubik_cube_3:io temp1[-1] set from storage rubik_cube_3:io cube_scale
data modify entity 4949f27b-5362-4e14-be04-fd7b9272a414 transformation set from storage rubik_cube_3:io temp1
data modify storage rubik_cube_3:io temp1[-1] set from entity 4949f27b-5362-4e14-be04-fd7b9272a414 transformation.translation[0]

execute at @n[type=text_display,tag=rubik_cube_3_center,distance=..2] as @e[type=interaction,tag=rrr_cube_block,sort=nearest,limit=26] run function rubik_cube_3:modify_scale/as_interaction
