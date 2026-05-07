#四元数插值
data modify storage rubik_cube_3:io manual_interpolation set from entity @s data.manual_interpolation
scoreboard players operation #quat_slerp_t int = #temp_timing int
scoreboard players operation #quat_slerp_t int *= 10000 const
scoreboard players operation #quat_slerp_t int /= #temp_timing_max int
data modify storage rubik_cube_3:io quat_A set from storage rubik_cube_3:io manual_interpolation.start_quat
data modify storage rubik_cube_3:io quat_B set from storage rubik_cube_3:io manual_interpolation.end_quat
function rubik_cube_3:quaternion_slerp/start
data modify entity @s transformation.left_rotation set from storage rubik_cube_3:io quat_C

#位移插值
execute as @s[tag=!rubik_cube_3_base] run function rubik_cube_3:quaternion_slerp/tick_ope_1/vec_ope
