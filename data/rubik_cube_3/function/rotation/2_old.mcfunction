#设置旋转轴
execute if data storage rubik_cube_3:io rotation{face:"up"} run data modify storage rubik_cube_3:io temp_left_rotation set value {axis:[0f,1f,0f],angle:0f}
execute if data storage rubik_cube_3:io rotation{face:"down"} run data modify storage rubik_cube_3:io temp_left_rotation set value {axis:[0f,-1f,0f],angle:0f}
execute if data storage rubik_cube_3:io rotation{face:"north"} run data modify storage rubik_cube_3:io temp_left_rotation set value {axis:[0f,0f,1f],angle:0f}
execute if data storage rubik_cube_3:io rotation{face:"south"} run data modify storage rubik_cube_3:io temp_left_rotation set value {axis:[0f,0f,-1f],angle:0f}
execute if data storage rubik_cube_3:io rotation{face:"east"} run data modify storage rubik_cube_3:io temp_left_rotation set value {axis:[-1f,0f,0f],angle:0f}
execute if data storage rubik_cube_3:io rotation{face:"west"} run data modify storage rubik_cube_3:io temp_left_rotation set value {axis:[1f,0f,0f],angle:0f}
execute if data storage rubik_cube_3:io rotation{face:"n-s_center"} run data modify storage rubik_cube_3:io temp_left_rotation set value {axis:[0f,0f,1f],angle:0f}
execute if data storage rubik_cube_3:io rotation{face:"e-w_center"} run data modify storage rubik_cube_3:io temp_left_rotation set value {axis:[-1f,0f,0f],angle:0f}
execute if data storage rubik_cube_3:io rotation{face:"u-d_center"} run data modify storage rubik_cube_3:io temp_left_rotation set value {axis:[0f,1f,0f],angle:0f}

#计算当前旋转的四元数
execute if data storage rubik_cube_3:io rotation{clockwise:true} run data modify storage rubik_cube_3:io temp_left_rotation.angle set value -1.5707963267948966192313216f
execute if data storage rubik_cube_3:io rotation{clockwise:false} run data modify storage rubik_cube_3:io temp_left_rotation.angle set value 1.5707963267948966192313216f
data modify entity 4949f27b-5362-4e14-be04-fd7b9272a414 transformation.left_rotation set from storage rubik_cube_3:io temp_left_rotation

#四元数乘法，与自身当前的旋转叠加
data modify storage rubik_cube_3:io temp_q1 set from entity 4949f27b-5362-4e14-be04-fd7b9272a414 transformation.left_rotation
data modify storage rubik_cube_3:io temp_q2 set from entity @s transformation.left_rotation
function rubik_cube_3:quaternion_mul
data modify entity @s transformation.left_rotation set from storage rubik_cube_3:io temp_q1
