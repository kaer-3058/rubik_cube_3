execute at @n[type=text_display,tag=rubik_cube_3_center,distance=...87,tag=!rubik_cube_3_temp_entity] if function rubik_cube_3:break_ run return fail

#放置魔方
function rubik_cube_3:set_cube/start
function rrr_cube_rooooooll:create/cube

# 绑定实体的数据：data:{center_entity_uuid:[I;0,0,0,1]}


#初始化大小
execute unless data storage rubik_cube_3:io cube_scale run data modify storage rubik_cube_3:io cube_scale set value 1.0f
execute as @e[type=text_display,tag=rubik_cube_3_,distance=...01] run function rubik_cube_3:modify_scale/2_spe.2

#这条是检测函数是否执行成功用的
return 2
