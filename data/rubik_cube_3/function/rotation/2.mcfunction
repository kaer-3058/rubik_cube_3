#设置旋转矩阵
#测试发现：MC的旋转矩阵的方向与一般网站上生成的方向是相反的
execute if data storage rubik_cube_3:io rotation{face:"up",        clockwise:false} run data modify storage rubik_cube_3:io store_temp_A set value [ 0,  0,  1,  0,  1,  0, -1,  0,  0 ]
execute if data storage rubik_cube_3:io rotation{face:"up",        clockwise:true } run data modify storage rubik_cube_3:io store_temp_A set value [ 0,  0, -1,  0,  1,  0,  1,  0,  0 ]
execute if data storage rubik_cube_3:io rotation{face:"down",      clockwise:false} run data modify storage rubik_cube_3:io store_temp_A set value [ 0,  0, -1,  0,  1,  0,  1,  0,  0 ]
execute if data storage rubik_cube_3:io rotation{face:"down",      clockwise:true } run data modify storage rubik_cube_3:io store_temp_A set value [ 0,  0,  1,  0,  1,  0, -1,  0,  0 ]
execute if data storage rubik_cube_3:io rotation{face:"north",     clockwise:false} run data modify storage rubik_cube_3:io store_temp_A set value [ 0, -1,  0,  1,  0,  0,  0,  0,  1 ]
execute if data storage rubik_cube_3:io rotation{face:"north",     clockwise:true } run data modify storage rubik_cube_3:io store_temp_A set value [ 0,  1,  0, -1,  0,  0,  0,  0,  1 ]
execute if data storage rubik_cube_3:io rotation{face:"south",     clockwise:false} run data modify storage rubik_cube_3:io store_temp_A set value [ 0,  1,  0, -1,  0,  0,  0,  0,  1 ]
execute if data storage rubik_cube_3:io rotation{face:"south",     clockwise:true } run data modify storage rubik_cube_3:io store_temp_A set value [ 0, -1,  0,  1,  0,  0,  0,  0,  1 ]
execute if data storage rubik_cube_3:io rotation{face:"east",      clockwise:false} run data modify storage rubik_cube_3:io store_temp_A set value [ 1,  0,  0,  0,  0,  1,  0, -1,  0 ]
execute if data storage rubik_cube_3:io rotation{face:"east",      clockwise:true } run data modify storage rubik_cube_3:io store_temp_A set value [ 1,  0,  0,  0,  0, -1,  0,  1,  0 ]
execute if data storage rubik_cube_3:io rotation{face:"west",      clockwise:false} run data modify storage rubik_cube_3:io store_temp_A set value [ 1,  0,  0,  0,  0, -1,  0,  1,  0 ]
execute if data storage rubik_cube_3:io rotation{face:"west",      clockwise:true } run data modify storage rubik_cube_3:io store_temp_A set value [ 1,  0,  0,  0,  0,  1,  0, -1,  0 ]
execute if data storage rubik_cube_3:io rotation{face:"n-s_center",clockwise:false} run data modify storage rubik_cube_3:io store_temp_A set value [ 0, -1,  0,  1,  0,  0,  0,  0,  1 ]
execute if data storage rubik_cube_3:io rotation{face:"n-s_center",clockwise:true } run data modify storage rubik_cube_3:io store_temp_A set value [ 0,  1,  0, -1,  0,  0,  0,  0,  1 ]
execute if data storage rubik_cube_3:io rotation{face:"e-w_center",clockwise:false} run data modify storage rubik_cube_3:io store_temp_A set value [ 1,  0,  0,  0,  0,  1,  0, -1,  0 ]
execute if data storage rubik_cube_3:io rotation{face:"e-w_center",clockwise:true } run data modify storage rubik_cube_3:io store_temp_A set value [ 1,  0,  0,  0,  0, -1,  0,  1,  0 ]
execute if data storage rubik_cube_3:io rotation{face:"u-d_center",clockwise:false} run data modify storage rubik_cube_3:io store_temp_A set value [ 0,  0,  1,  0,  1,  0, -1,  0,  0 ]
execute if data storage rubik_cube_3:io rotation{face:"u-d_center",clockwise:true } run data modify storage rubik_cube_3:io store_temp_A set value [ 0,  0, -1,  0,  1,  0,  1,  0,  0 ]

#对用于旋转计算的根实体计算旋转数据
execute as @s[tag=rubik_cube_3_base] run function rubik_cube_3:rotation/not_has_text_entity

#对具有显示数据的实体计算旋转与平移数据
execute as @s[tag=!rubik_cube_3_base] run function rubik_cube_3:rotation/has_text_entity

#用于计算插值动画的四元数
execute if data storage rubik_cube_3:io rotation{face:"up",        clockwise:true } run data modify storage rubik_cube_3:io manual_interpolation.direction set value [ 0, 0.7071067811865475, 0, -0.7071067811865475  ]
execute if data storage rubik_cube_3:io rotation{face:"up",        clockwise:false} run data modify storage rubik_cube_3:io manual_interpolation.direction set value [ 0, 0.7071067811865475, 0, 0.7071067811865475   ]
execute if data storage rubik_cube_3:io rotation{face:"down",      clockwise:true } run data modify storage rubik_cube_3:io manual_interpolation.direction set value [ 0, -0.7071067811865475, 0, -0.7071067811865475 ]
execute if data storage rubik_cube_3:io rotation{face:"down",      clockwise:false} run data modify storage rubik_cube_3:io manual_interpolation.direction set value [ 0, -0.7071067811865475, 0, 0.7071067811865475  ]
execute if data storage rubik_cube_3:io rotation{face:"north",     clockwise:true } run data modify storage rubik_cube_3:io manual_interpolation.direction set value [ 0, 0, 0.7071067811865475, -0.7071067811865475  ]
execute if data storage rubik_cube_3:io rotation{face:"north",     clockwise:false} run data modify storage rubik_cube_3:io manual_interpolation.direction set value [ 0, 0, 0.7071067811865475, 0.7071067811865475   ]
execute if data storage rubik_cube_3:io rotation{face:"south",     clockwise:true } run data modify storage rubik_cube_3:io manual_interpolation.direction set value [ 0, 0, -0.7071067811865475, -0.7071067811865475 ]
execute if data storage rubik_cube_3:io rotation{face:"south",     clockwise:false} run data modify storage rubik_cube_3:io manual_interpolation.direction set value [ 0, 0, -0.7071067811865475, 0.7071067811865475  ]
execute if data storage rubik_cube_3:io rotation{face:"east",      clockwise:true } run data modify storage rubik_cube_3:io manual_interpolation.direction set value [ -0.7071067811865475, 0, 0, -0.7071067811865475 ]
execute if data storage rubik_cube_3:io rotation{face:"east",      clockwise:false} run data modify storage rubik_cube_3:io manual_interpolation.direction set value [ -0.7071067811865475, 0, 0, 0.7071067811865475  ]
execute if data storage rubik_cube_3:io rotation{face:"west",      clockwise:true } run data modify storage rubik_cube_3:io manual_interpolation.direction set value [ 0.7071067811865475, 0, 0, -0.7071067811865475  ]
execute if data storage rubik_cube_3:io rotation{face:"west",      clockwise:false} run data modify storage rubik_cube_3:io manual_interpolation.direction set value [ 0.7071067811865475, 0, 0, 0.7071067811865475   ]
execute if data storage rubik_cube_3:io rotation{face:"n-s_center",clockwise:true } run data modify storage rubik_cube_3:io manual_interpolation.direction set value [ 0, 0, 0.7071067811865475, -0.7071067811865475  ]
execute if data storage rubik_cube_3:io rotation{face:"n-s_center",clockwise:false} run data modify storage rubik_cube_3:io manual_interpolation.direction set value [ 0, 0, 0.7071067811865475, 0.7071067811865475   ]
execute if data storage rubik_cube_3:io rotation{face:"e-w_center",clockwise:true } run data modify storage rubik_cube_3:io manual_interpolation.direction set value [ -0.7071067811865475, 0, 0, -0.7071067811865475 ]
execute if data storage rubik_cube_3:io rotation{face:"e-w_center",clockwise:false} run data modify storage rubik_cube_3:io manual_interpolation.direction set value [ -0.7071067811865475, 0, 0, 0.7071067811865475  ]
execute if data storage rubik_cube_3:io rotation{face:"u-d_center",clockwise:true } run data modify storage rubik_cube_3:io manual_interpolation.direction set value [ 0, 0.7071067811865475, 0, -0.7071067811865475  ]
execute if data storage rubik_cube_3:io rotation{face:"u-d_center",clockwise:false} run data modify storage rubik_cube_3:io manual_interpolation.direction set value [ 0, 0.7071067811865475, 0, 0.7071067811865475   ]

#插值动画
data modify storage rubik_cube_3:io manual_interpolation.timing_max set from storage rubik_cube_3:io rotation.interpolation_duration
data modify entity @s data.manual_interpolation set from storage rubik_cube_3:io manual_interpolation
scoreboard players set @s rubik_cube_3_interpolat_durat 1
data modify entity @s interpolation_duration set value 1

#如果插值时间不大于0则直接应用旋转
scoreboard players set #temp1 int 0
execute store result score #temp1 int run data get storage rubik_cube_3:io manual_interpolation.timing_max
execute unless score #temp1 int matches 1.. run function rubik_cube_3:rotation/3
