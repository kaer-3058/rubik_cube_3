data modify entity @s data.cube_scale set value 1.0
data modify storage rubik_cube_3:io temp1 set from entity @s data.transformation
data modify storage rubik_cube_3:io temp1[-1] set value 3
data modify entity @s transformation set from storage rubik_cube_3:io temp1
# data modify entity @s interpolation_duration set value 0
