#如果插值时间不大于0则直接应用旋转

scoreboard players reset @s rubik_cube_3_interpolat_durat
data modify entity @s interpolation_duration set value 0

data modify storage rubik_cube_3:io manual_interpolation set from entity @s data.manual_interpolation
data remove entity @s data.manual_interpolation
data modify entity @s transformation.left_rotation set from storage rubik_cube_3:io manual_interpolation.end_quat
data modify entity @s[tag=!rubik_cube_3_base] transformation.translation set from storage rubik_cube_3:io manual_interpolation.end_vec
data modify entity @s[tag=rubik_cube_3_base] data.rotation_matrix set from storage rubik_cube_3:io manual_interpolation.rotation_matrix
data modify entity @s[tag=!rubik_cube_3_base] data.transformation set from storage rubik_cube_3:io manual_interpolation.transformation

#修改魔方大小
data modify storage rubik_cube_3:io temp1 set from entity @s data.transformation
data modify storage rubik_cube_3:io temp1[-1] set from storage rubik_cube_3:io temp_1_scale
data modify entity @s transformation set from storage rubik_cube_3:io temp1
