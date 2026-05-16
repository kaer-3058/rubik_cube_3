execute at @n[type=text_display,tag=rubik_cube_3_center,distance=..2] as @e[type=text_display,tag=rubik_cube_3_,distance=...01,scores={rubik_cube_3_interpolat_durat=1}] run return fail

#旋转魔方
execute as @n[type=text_display,tag=rubik_cube_3_center,distance=..2] run function rubik_cube_3:rotation/start
