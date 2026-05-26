#校准魔方大小
data modify storage rubik_cube_3:io temp1 set value [1,0,0,3,0,1,0,3,0,0,1,3,0,0,0,1]
data modify storage rubik_cube_3:io temp1[-1] set from entity @s data.cube_scale
data modify entity 4949f27b-5362-4e14-be04-fd7b9272a414 transformation set from storage rubik_cube_3:io temp1
function rubik_cube_3:modify_scale/2_spe
