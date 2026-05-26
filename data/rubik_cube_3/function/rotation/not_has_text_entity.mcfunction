#对用于旋转计算的根实体计算旋转数据

#旋转矩阵乘法，与自身当前的旋转叠加
#此处旋转叠加的矩阵乘法顺序是：A_new*A_old，新*旧
data modify storage rubik_cube_3:io temp_A set from storage rubik_cube_3:io store_temp_A
data modify storage rubik_cube_3:io temp_B set from entity @s data.rotation_matrix
function rubik_cube_3:3x_matrix_mul
data modify storage rubik_cube_3:io sstemp_A set from storage rubik_cube_3:io temp_A
data modify storage rubik_cube_3:io temp9 set from storage rubik_cube_3:io temp_A
data modify storage rubik_cube_3:io temp9 insert 3 value 0
data modify storage rubik_cube_3:io temp9 insert 7 value 0
data modify storage rubik_cube_3:io temp9 insert 11 value 0
data modify storage rubik_cube_3:io temp1 set value [0,0,0,1]
data modify storage rubik_cube_3:io temp9 append from storage rubik_cube_3:io temp1[]
data modify entity 4949f27b-5362-4e14-be04-fd7b9272a414 transformation set from storage rubik_cube_3:io temp9
data modify storage rubik_cube_3:io temp2 set from entity 4949f27b-5362-4e14-be04-fd7b9272a414 transformation

data modify entity 4949f27b-5362-4e14-be04-fd7b9272a414 transformation set from entity @s data.transformation
data modify storage rubik_cube_3:io sstempH set from entity 4949f27b-5362-4e14-be04-fd7b9272a414 transformation

#手动插值的数据
data modify storage rubik_cube_3:io manual_interpolation set value {start_quat:[0,0,0,1],end_quat:[0,0,0,1],timing:0,timing_max:0}
data modify storage rubik_cube_3:io manual_interpolation.start_quat set from storage rubik_cube_3:io sstempH.left_rotation
data modify storage rubik_cube_3:io manual_interpolation.end_quat set from storage rubik_cube_3:io temp2.left_rotation
data modify storage rubik_cube_3:io manual_interpolation.rotation_matrix set from storage rubik_cube_3:io sstemp_A
