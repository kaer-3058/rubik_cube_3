data modify storage rubik_cube_3:io stemp1 set from entity @s data.cube_scale
function rubik_cube_3:modify_scale/macro1 with storage rubik_cube_3:io
execute store result storage rubik_cube_3:io temp3 double .1 run data get storage rubik_cube_3:io temp2
function rubik_cube_3:delete/macro1 with storage rubik_cube_3:io
execute on passengers run function rubik_cube_3:delete/2
function rubik_cube_3:delete/2
