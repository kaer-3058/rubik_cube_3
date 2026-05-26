#位移插值

data modify storage rubik_cube_3:io quat_A set from storage rubik_cube_3:io manual_interpolation.direction
function rubik_cube_3:quaternion_slerp/start_1_to_a

#单位四元数取逆
data modify storage rubik_cube_3:io sstemp_quat_C set from storage rubik_cube_3:io quat_C
execute store result storage rubik_cube_3:io sstemp_quat_C[0] double -0.00000001 run data get storage rubik_cube_3:io sstemp_quat_C[0] 100000000
execute store result storage rubik_cube_3:io sstemp_quat_C[1] double -0.00000001 run data get storage rubik_cube_3:io sstemp_quat_C[1] 100000000
execute store result storage rubik_cube_3:io sstemp_quat_C[2] double -0.00000001 run data get storage rubik_cube_3:io sstemp_quat_C[2] 100000000

#四元数乘积 q*v*(q^-1)，视向量v为实部为零的纯四元数
data modify storage rubik_cube_3:io temp_q1 set from storage rubik_cube_3:io quat_C
data modify storage rubik_cube_3:io temp_q2 set from storage rubik_cube_3:io manual_interpolation.start_vec
data modify storage rubik_cube_3:io temp_q2 append value 0
function rubik_cube_3:quaternion_mul
data modify storage rubik_cube_3:io temp_q2 set from storage rubik_cube_3:io sstemp_quat_C
function rubik_cube_3:quaternion_mul

#对位移向量进行缩放以适配魔方大小
data modify storage rubik_cube_3:io temp1 set value [1,0,0,2,0,1,0,2,0,0,1,2,0,0,0,1]
data modify storage rubik_cube_3:io temp1[3] set from storage rubik_cube_3:io temp_q1[0]
data modify storage rubik_cube_3:io temp1[7] set from storage rubik_cube_3:io temp_q1[1]
data modify storage rubik_cube_3:io temp1[11] set from storage rubik_cube_3:io temp_q1[2]
data modify storage rubik_cube_3:io temp1[-1] set from storage rubik_cube_3:io temp_1_scale
data modify entity 4949f27b-5362-4e14-be04-fd7b9272a414 transformation set from storage rubik_cube_3:io temp1
data modify entity @s transformation.translation set from entity 4949f27b-5362-4e14-be04-fd7b9272a414 transformation.translation
