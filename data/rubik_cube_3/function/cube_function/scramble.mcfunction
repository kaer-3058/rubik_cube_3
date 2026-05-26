execute at @n[type=text_display,tag=rubik_cube_3_center,distance=..2] if function rubik_cube_3:break_ run return fail

#随机打乱魔方 - 不带动画
execute as @n[type=text_display,tag=rubik_cube_3_center,distance=..2] at @s run function rubik_cube_3:scramble_cube/start

#校准魔方大小
execute as @n[type=text_display,tag=rubik_cube_3_center,distance=..2] on passengers run function rubik_cube_3:modify_scale/2_spe.4
