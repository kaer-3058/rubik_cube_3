#旋转魔方

#执行方式：execute positioned x y z as @e[type=text_display,tag=rubik_cube_3_,distance=...01] run function rubik_cube_3:rotation/start
#传入魔方的位置

# data modify storage rubik_cube_3:io rotation set value {face:"up", clockwise:true, interpolation_duration:10}
# face：要旋转哪一面。 \
  可选值："up", "down", "north", "south", "east", "west"
# clockwise：是否按顺时针旋转，默认为true
# interpolation_duration：展示实体渲染变换发生改变时的插值时间，单位为游戏刻，默认为0

# 北蓝，南绿，东橙，西红，上黄，下白

#是否顺时针旋转，默认值设置
execute unless data storage rubik_cube_3:io rotation{clockwise:true} unless data storage rubik_cube_3:io rotation{clockwise:false} run data modify storage rubik_cube_3:io rotation.clockwise set value true

#是否整体旋转，默认值设置
execute unless data storage rubik_cube_3:io rotation{whole_cube:true} unless data storage rubik_cube_3:io rotation{whole_cube:false} run data modify storage rubik_cube_3:io rotation.whole_cube set value false

#单层旋转
execute if data storage rubik_cube_3:io rotation{whole_cube:false} run return run function rubik_cube_3:rotation/single_layer

#整体旋转
data modify storage rubik_cube_3:io store_rotation set from storage rubik_cube_3:io rotation
execute if data storage rubik_cube_3:io store_rotation{face:"up",clockwise:true} run function rubik_cube_3:rotation/whole_cube_rotation/up_true
execute if data storage rubik_cube_3:io store_rotation{face:"up",clockwise:false} run function rubik_cube_3:rotation/whole_cube_rotation/up_false
execute if data storage rubik_cube_3:io store_rotation{face:"down",clockwise:true} run function rubik_cube_3:rotation/whole_cube_rotation/down_true
execute if data storage rubik_cube_3:io store_rotation{face:"down",clockwise:false} run function rubik_cube_3:rotation/whole_cube_rotation/down_false
execute if data storage rubik_cube_3:io store_rotation{face:"north",clockwise:true} run function rubik_cube_3:rotation/whole_cube_rotation/north_true
execute if data storage rubik_cube_3:io store_rotation{face:"north",clockwise:false} run function rubik_cube_3:rotation/whole_cube_rotation/north_false
execute if data storage rubik_cube_3:io store_rotation{face:"south",clockwise:true} run function rubik_cube_3:rotation/whole_cube_rotation/south_true
execute if data storage rubik_cube_3:io store_rotation{face:"south",clockwise:false} run function rubik_cube_3:rotation/whole_cube_rotation/south_false
execute if data storage rubik_cube_3:io store_rotation{face:"west",clockwise:true} run function rubik_cube_3:rotation/whole_cube_rotation/west_true
execute if data storage rubik_cube_3:io store_rotation{face:"west",clockwise:false} run function rubik_cube_3:rotation/whole_cube_rotation/west_false
execute if data storage rubik_cube_3:io store_rotation{face:"east",clockwise:true} run function rubik_cube_3:rotation/whole_cube_rotation/east_true
execute if data storage rubik_cube_3:io store_rotation{face:"east",clockwise:false} run function rubik_cube_3:rotation/whole_cube_rotation/east_false
execute if data storage rubik_cube_3:io store_rotation{face:"u-d_center",clockwise:true} run function rubik_cube_3:rotation/whole_cube_rotation/u-d_center_true
execute if data storage rubik_cube_3:io store_rotation{face:"u-d_center",clockwise:false} run function rubik_cube_3:rotation/whole_cube_rotation/u-d_center_false
execute if data storage rubik_cube_3:io store_rotation{face:"n-s_center",clockwise:true} run function rubik_cube_3:rotation/whole_cube_rotation/n-s_center_true
execute if data storage rubik_cube_3:io store_rotation{face:"n-s_center",clockwise:false} run function rubik_cube_3:rotation/whole_cube_rotation/n-s_center_false
execute if data storage rubik_cube_3:io store_rotation{face:"e-w_center",clockwise:true} run function rubik_cube_3:rotation/whole_cube_rotation/e-w_center_true
execute if data storage rubik_cube_3:io store_rotation{face:"e-w_center",clockwise:false} run function rubik_cube_3:rotation/whole_cube_rotation/e-w_center_false
data modify storage rubik_cube_3:io rotation set from storage rubik_cube_3:io store_rotation
