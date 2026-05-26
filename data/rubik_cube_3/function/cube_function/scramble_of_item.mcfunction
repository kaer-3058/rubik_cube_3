execute at @n[type=text_display,tag=rubik_cube_3_center,distance=..2] if function rubik_cube_3:break_ run return fail

#随机打乱魔方 - 带动画
scoreboard players set #scrambling_steps int 20
execute as @n[type=text_display,tag=rubik_cube_3_center,distance=..2] run function rubik_cube_3:scramble_cube/start_2_of_item
