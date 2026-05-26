execute at @n[type=text_display,tag=rubik_cube_3_center,distance=..2] if function rubik_cube_3:break_ run return fail

#导入魔方公式
execute as @n[type=text_display,tag=rubik_cube_3_center,distance=..2] run function rubik_cube_3:formula/import/start
