function rubik_cube_3:modify_scale/macro1 with storage rubik_cube_3:io
execute store result storage rubik_cube_3:io temp3 double .1 run data get storage rubik_cube_3:io temp2
function rubik_cube_3:delete/macro1 with storage rubik_cube_3:io
execute as @e[type=text_display,tag=rubik_cube_3_,distance=...01] run function rubik_cube_3:delete/2
