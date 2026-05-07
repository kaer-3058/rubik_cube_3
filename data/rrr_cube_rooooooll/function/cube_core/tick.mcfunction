
execute if score @s rrrcubecore_timeount matches 1.. run scoreboard players remove @s rrrcubecore_timeount 1
execute if score @s rrrcubecore_timeount matches ..0 run function rrr_cube_rooooooll:cube_core/timeout


#挨打清空展示实体乘客防止卡顿
execute if data entity @s attack run function rrr_cube_rooooooll:cube_core/xplode
execute if data entity @s interaction run function rrr_cube_rooooooll:cube_core/xplode