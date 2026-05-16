data modify entity @s data.cube_scale set from storage rubik_cube_3:io cube_scale
data modify storage rubik_cube_3:io temp1 set from entity @s data.transformation
data modify storage rubik_cube_3:io sstemp_div_scale set from entity 4949f27b-5362-4e14-be04-fd7b9272a414 transformation.translation[0]
data modify storage rubik_cube_3:io temp1[-1] set from storage rubik_cube_3:io sstemp_div_scale 
data modify entity @s transformation set from storage rubik_cube_3:io temp1
# data modify entity @s interpolation_duration set value 0
