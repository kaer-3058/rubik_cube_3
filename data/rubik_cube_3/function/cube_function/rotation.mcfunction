execute at @n[type=text_display,tag=rubik_cube_3_center,distance=..2,tag=!rubik_cube_3_temp_entity] if function rubik_cube_3:break_ run return fail

#旋转魔方
execute as @n[type=text_display,tag=rubik_cube_3_center,distance=..2,tag=!rubik_cube_3_temp_entity] run function rubik_cube_3:rotation/start
