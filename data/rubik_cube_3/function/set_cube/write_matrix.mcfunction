#载入矩阵与位移修正

#位移修正
data modify entity @s transformation set from entity @s data.transformation
data modify storage rubik_cube_3:io temp1 set from entity @s transformation.translation
execute as b09e-44-fded-6-efa5ffffef64 run function rubik_cube_3:set_cube/as_entity_1
data modify entity @s transformation.translation set from storage rubik_cube_3:io temp1
data modify entity @s interpolation_duration set value 0

#存入data校准矩阵
data modify storage rubik_cube_3:io temp4 set from entity @s data.transformation
data modify storage rubik_cube_3:io temp4[3] set from storage rubik_cube_3:io temp1[0]
data modify storage rubik_cube_3:io temp4[7] set from storage rubik_cube_3:io temp1[1]
data modify storage rubik_cube_3:io temp4[11] set from storage rubik_cube_3:io temp1[2]
data modify entity @s data.transformation set from storage rubik_cube_3:io temp4
