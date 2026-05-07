#如果插值时间不大于0则直接应用旋转

scoreboard players reset @s rubik_cube_3_interpolat_durat
data modify entity @s interpolation_duration set value 0
data remove entity @s data.manual_interpolation
data modify entity @s transformation.left_rotation set from storage rubik_cube_3:io manual_interpolation.end_quat
data modify entity @s[tag=!rubik_cube_3_base] transformation.translation set from storage rubik_cube_3:io manual_interpolation.end_vec
data modify entity @s[tag=rubik_cube_3_base] data.rotation_matrix set from storage rubik_cube_3:io manual_interpolation.rotation_matrix
data modify entity @s[tag=!rubik_cube_3_base] data.transformation set from storage rubik_cube_3:io manual_interpolation.transformation

#修改魔方大小
data modify storage rubik_cube_3:io temp1 set value [1,0,0,3,0,1,0,3,0,0,1,3,0,0,0,1]
data modify storage rubik_cube_3:io temp1[-1] set from storage rubik_cube_3:io cube_scale
data modify entity 4949f27b-5362-4e14-be04-fd7b9272a414 transformation set from storage rubik_cube_3:io temp1
function rubik_cube_3:modify_scale/2_spe.3
