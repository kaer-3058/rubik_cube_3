#带动画的打乱魔方
execute as @s[tag=rubik_cube_3_scrambling] run function rubik_cube_3:scramble_cube/entity_tick

#带动画的播放魔方旋转动作
execute as @s[tag=rubik_cube_3_is_import_formula] run function rubik_cube_3:item_function/entity_tick

#手动计算四元数插值
execute if score @s rubik_cube_3_interpolat_durat matches 1 run function rubik_cube_3:quaternion_slerp/tick_ope_1/start
