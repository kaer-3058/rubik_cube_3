#放置临时魔方

# function rubik_cube_3:item_function/use/item_function/set

#删除临时魔方
# execute as @e[type=text_display,tag=rubik_cube_3_using_item_set] on passengers run kill @s
# kill @e[type=text_display,tag=rubik_cube_3_using_item_set]


function rubik_cube_3:item_function/use/item_function/set_cube

#初始化大小
execute unless data storage rubik_cube_3:io cube_scale run data modify storage rubik_cube_3:io cube_scale set value 1.0f
execute as @e[type=text_display,tag=rubik_cube_3_,distance=...01,tag=!rubik_glowing] run function rubik_cube_3:modify_scale/2_spe.2
