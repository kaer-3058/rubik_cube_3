#对具有显示数据的实体计算旋转与平移数据

data modify storage rubik_cube_3:io temp_A set from storage rubik_cube_3:io store_temp_A

#矩阵乘法，4*4齐次变换矩阵的乘法
#拆成了两部分：3*3的旋转矩阵相乘，3*3旋转矩阵乘3维位移向量
data modify storage rubik_cube_3:io temp_C set from storage rubik_cube_3:io temp_A
data modify storage rubik_cube_3:io temp_B set from entity @s data.transformation
data modify storage rubik_cube_3:io temp_D set value []
data modify storage rubik_cube_3:io temp_D append from storage rubik_cube_3:io temp_B[3]
data modify storage rubik_cube_3:io temp_D append from storage rubik_cube_3:io temp_B[7]
data modify storage rubik_cube_3:io temp_D append from storage rubik_cube_3:io temp_B[11]
data remove storage rubik_cube_3:io temp_B[11]
data remove storage rubik_cube_3:io temp_B[7]
data remove storage rubik_cube_3:io temp_B[3]
data remove storage rubik_cube_3:io temp_B[-1]
data remove storage rubik_cube_3:io temp_B[-1]
data remove storage rubik_cube_3:io temp_B[-1]
data remove storage rubik_cube_3:io temp_B[-1]
function rubik_cube_3:3x_matrix_mul_2
function rubik_cube_3:matrix_mul_vec
data modify storage rubik_cube_3:io temp_A insert 3 from storage rubik_cube_3:io temp_D[0]
data modify storage rubik_cube_3:io temp_A insert 7 from storage rubik_cube_3:io temp_D[1]
data modify storage rubik_cube_3:io temp_A insert 11 from storage rubik_cube_3:io temp_D[2]
data modify storage rubik_cube_3:io temp1 set value [0,0,0,1]
data modify storage rubik_cube_3:io temp_A append from storage rubik_cube_3:io temp1[]
data modify storage rubik_cube_3:io sstemp_A set from storage rubik_cube_3:io temp_A
data modify entity 4949f27b-5362-4e14-be04-fd7b9272a414 transformation set from storage rubik_cube_3:io temp_A
data modify storage rubik_cube_3:io temp_A set from entity 4949f27b-5362-4e14-be04-fd7b9272a414 transformation

data modify entity 4949f27b-5362-4e14-be04-fd7b9272a414 transformation set from entity @s data.transformation
data modify storage rubik_cube_3:io sstempH set from entity 4949f27b-5362-4e14-be04-fd7b9272a414 transformation

#手动插值的数据
data modify storage rubik_cube_3:io manual_interpolation set value {start_quat:[0,0,0,1],end_quat:[0,0,0,1],start_vec:[0,0,0],end_vec:[0,0,0],timing:0,timing_max:0}
data modify storage rubik_cube_3:io manual_interpolation.start_quat set from storage rubik_cube_3:io sstempH.left_rotation
data modify storage rubik_cube_3:io manual_interpolation.end_quat set from storage rubik_cube_3:io temp_A.left_rotation
data modify storage rubik_cube_3:io manual_interpolation.start_vec set from storage rubik_cube_3:io sstempH.translation
data modify storage rubik_cube_3:io manual_interpolation.end_vec set from storage rubik_cube_3:io temp_A.translation
data modify storage rubik_cube_3:io manual_interpolation.transformation set from storage rubik_cube_3:io sstemp_A
