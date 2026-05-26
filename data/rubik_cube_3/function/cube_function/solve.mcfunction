execute at @n[type=text_display,tag=rubik_cube_3_center,distance=..2] if function rubik_cube_3:break_ run return fail

#复原魔方
execute at @n[type=text_display,tag=rubik_cube_3_center,distance=..2] as @e[type=text_display,tag=rubik_cube_3_,distance=...01] run function rubik_cube_3:solve/start
