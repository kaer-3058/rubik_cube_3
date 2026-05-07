##魔方复原

#删除魔方
function rubik_cube_3:cube_function/delete

#放置魔方
function rubik_cube_3:cube_function/set

#修改魔方大小
function rubik_cube_3:cube_function/modify_scale

#校准朝向
execute as @e[type=text_display,tag=rubik_cube_3_,distance=...01] run rotate @s ~ ~

#这是偷懒的写法，先这样吧
