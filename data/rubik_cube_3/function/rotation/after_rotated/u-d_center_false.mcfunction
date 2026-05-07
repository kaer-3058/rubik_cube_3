#旋转后更改标签

# 北蓝
# 南绿
# 东橙
# 西红
# 上黄
# 下白

execute as @s[tag=rubik_cube_3_north] run tag @s add temp__
execute as @s[tag=rubik_cube_3_north] run tag @s remove rubik_cube_3_north

execute as @s[tag=rubik_cube_3_east] run tag @s add rubik_cube_3_north
execute as @s[tag=rubik_cube_3_east] run tag @s remove rubik_cube_3_east

execute as @s[tag=rubik_cube_3_south] run tag @s add rubik_cube_3_east
execute as @s[tag=rubik_cube_3_south] run tag @s remove rubik_cube_3_south

execute as @s[tag=rubik_cube_3_west] run tag @s add rubik_cube_3_south
execute as @s[tag=rubik_cube_3_west] run tag @s remove rubik_cube_3_west

execute as @s[tag=temp__] run tag @s add rubik_cube_3_west
execute as @s[tag=temp__] run tag @s remove temp__


execute as @s[tag=rubik_cube_3_n-s_center] run tag @s add temp__
execute as @s[tag=rubik_cube_3_n-s_center] run tag @s remove rubik_cube_3_n-s_center

execute as @s[tag=rubik_cube_3_e-w_center] run tag @s add rubik_cube_3_n-s_center
execute as @s[tag=rubik_cube_3_e-w_center] run tag @s remove rubik_cube_3_e-w_center

execute as @s[tag=temp__] run tag @s add rubik_cube_3_e-w_center
execute as @s[tag=temp__] run tag @s remove temp__
