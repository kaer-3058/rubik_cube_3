data modify entity @s interpolation_duration set value 0

#进行旋转
execute if data storage rubik_cube_3:io rotation{face:"north"} as @s[tag=rubik_cube_3_north] run function rubik_cube_3:rotation/2
execute if data storage rubik_cube_3:io rotation{face:"south"} as @s[tag=rubik_cube_3_south] run function rubik_cube_3:rotation/2
execute if data storage rubik_cube_3:io rotation{face:"east"} as @s[tag=rubik_cube_3_east] run function rubik_cube_3:rotation/2
execute if data storage rubik_cube_3:io rotation{face:"west"} as @s[tag=rubik_cube_3_west] run function rubik_cube_3:rotation/2
execute if data storage rubik_cube_3:io rotation{face:"up"} as @s[tag=rubik_cube_3_up] run function rubik_cube_3:rotation/2
execute if data storage rubik_cube_3:io rotation{face:"down"} as @s[tag=rubik_cube_3_down] run function rubik_cube_3:rotation/2
execute if data storage rubik_cube_3:io rotation{face:"n-s_center"} as @s[tag=rubik_cube_3_n-s_center] run function rubik_cube_3:rotation/2
execute if data storage rubik_cube_3:io rotation{face:"e-w_center"} as @s[tag=rubik_cube_3_e-w_center] run function rubik_cube_3:rotation/2
execute if data storage rubik_cube_3:io rotation{face:"u-d_center"} as @s[tag=rubik_cube_3_u-d_center] run function rubik_cube_3:rotation/2

#旋转后更改标签
execute if data storage rubik_cube_3:io rotation{face:"up",clockwise:true} as @s[tag=rubik_cube_3_up] run function rubik_cube_3:rotation/after_rotated/up_true
execute if data storage rubik_cube_3:io rotation{face:"up",clockwise:false} as @s[tag=rubik_cube_3_up] run function rubik_cube_3:rotation/after_rotated/up_false
execute if data storage rubik_cube_3:io rotation{face:"down",clockwise:true} as @s[tag=rubik_cube_3_down] run function rubik_cube_3:rotation/after_rotated/down_true
execute if data storage rubik_cube_3:io rotation{face:"down",clockwise:false} as @s[tag=rubik_cube_3_down] run function rubik_cube_3:rotation/after_rotated/down_false
execute if data storage rubik_cube_3:io rotation{face:"north",clockwise:true} as @s[tag=rubik_cube_3_north] run function rubik_cube_3:rotation/after_rotated/north_true
execute if data storage rubik_cube_3:io rotation{face:"north",clockwise:false} as @s[tag=rubik_cube_3_north] run function rubik_cube_3:rotation/after_rotated/north_false
execute if data storage rubik_cube_3:io rotation{face:"south",clockwise:true} as @s[tag=rubik_cube_3_south] run function rubik_cube_3:rotation/after_rotated/south_true
execute if data storage rubik_cube_3:io rotation{face:"south",clockwise:false} as @s[tag=rubik_cube_3_south] run function rubik_cube_3:rotation/after_rotated/south_false
execute if data storage rubik_cube_3:io rotation{face:"west",clockwise:true} as @s[tag=rubik_cube_3_west] run function rubik_cube_3:rotation/after_rotated/west_true
execute if data storage rubik_cube_3:io rotation{face:"west",clockwise:false} as @s[tag=rubik_cube_3_west] run function rubik_cube_3:rotation/after_rotated/west_false
execute if data storage rubik_cube_3:io rotation{face:"east",clockwise:true} as @s[tag=rubik_cube_3_east] run function rubik_cube_3:rotation/after_rotated/east_true
execute if data storage rubik_cube_3:io rotation{face:"east",clockwise:false} as @s[tag=rubik_cube_3_east] run function rubik_cube_3:rotation/after_rotated/east_false
execute if data storage rubik_cube_3:io rotation{face:"u-d_center",clockwise:true} as @s[tag=rubik_cube_3_u-d_center] run function rubik_cube_3:rotation/after_rotated/u-d_center_true
execute if data storage rubik_cube_3:io rotation{face:"u-d_center",clockwise:false} as @s[tag=rubik_cube_3_u-d_center] run function rubik_cube_3:rotation/after_rotated/u-d_center_false
execute if data storage rubik_cube_3:io rotation{face:"n-s_center",clockwise:true} as @s[tag=rubik_cube_3_n-s_center] run function rubik_cube_3:rotation/after_rotated/n-s_center_true
execute if data storage rubik_cube_3:io rotation{face:"n-s_center",clockwise:false} as @s[tag=rubik_cube_3_n-s_center] run function rubik_cube_3:rotation/after_rotated/n-s_center_false
execute if data storage rubik_cube_3:io rotation{face:"e-w_center",clockwise:true} as @s[tag=rubik_cube_3_e-w_center] run function rubik_cube_3:rotation/after_rotated/e-w_center_true
execute if data storage rubik_cube_3:io rotation{face:"e-w_center",clockwise:false} as @s[tag=rubik_cube_3_e-w_center] run function rubik_cube_3:rotation/after_rotated/e-w_center_false
