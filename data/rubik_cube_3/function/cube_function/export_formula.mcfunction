execute at @n[type=text_display,tag=rubik_cube_3_center,distance=..2] if entity @e[type=text_display,tag=rubik_cube_3_,distance=...01,scores={rubik_cube_3_interpolat_durat=1},limit=1] run return fail

#导出魔方公式
execute as @n[type=text_display,tag=rubik_cube_3_center,distance=..2] run function rubik_cube_3:formula/export/start
