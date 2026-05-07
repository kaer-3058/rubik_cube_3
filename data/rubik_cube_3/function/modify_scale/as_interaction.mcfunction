#修改交互实体的大小

# storage rubik_cube_3:io sstemp_div_scale
data modify entity @s height set from storage rubik_cube_3:io temp_scale_div_3
data modify entity @s width set from storage rubik_cube_3:io temp_scale_div_3
data modify storage rubik_cube_3:io temp7 set from entity @s data.offset_pos
data modify storage rubik_cube_3:io temp1[3] set from storage rubik_cube_3:io temp7[0]
data modify storage rubik_cube_3:io temp1[7] set from storage rubik_cube_3:io temp7[1]
data modify storage rubik_cube_3:io temp1[11] set from storage rubik_cube_3:io temp7[2]
data modify entity 4949f27b-5362-4e14-be04-fd7b9272a414 transformation set from storage rubik_cube_3:io temp1
data modify storage rubik_cube_3:io temp_offset_pos set from entity 4949f27b-5362-4e14-be04-fd7b9272a414 transformation.translation
data modify storage rubik_cube_3:io temp_offset_pos_x set from storage rubik_cube_3:io temp_offset_pos[0]
data modify storage rubik_cube_3:io temp_offset_pos_y set from storage rubik_cube_3:io temp_offset_pos[1]
data modify storage rubik_cube_3:io temp_offset_pos_z set from storage rubik_cube_3:io temp_offset_pos[2]
function rubik_cube_3:modify_scale/macro3 with storage rubik_cube_3:io
