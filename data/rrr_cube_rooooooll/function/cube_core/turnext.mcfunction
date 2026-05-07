#覆盖旋转方向数据
$execute store result score t0 rrrcubecore_timeount run data get entity @s data.turnturn_cube[0].$(fucker)
$execute store result score t1 rrrcubecore_timeount run data get entity @s data.turnturn_cube[1].$(fucker)
$execute store result score t2 rrrcubecore_timeount run data get entity @s data.turnturn_cube[2].$(fucker)


$data remove entity @s data.turnturn_cube[0].$(fucker)
$data remove entity @s data.turnturn_cube[1].$(fucker)
$data remove entity @s data.turnturn_cube[2].$(fucker)

#判断旋转方向
function rrr_cube_rooooooll:cube_core/where

#测试模式1以上显示旋转方向
$execute if score testmode rrrcubecore_timeount matches 1.. run function rrr_cube_rooooooll:cube_core/display_lv1 {face:$(fucker)}
##测试模式2以上显示详细数据
execute if score testmode rrrcubecore_timeount matches 2.. run function rrr_cube_rooooooll:cube_core/display_lv2

#旋转方块
#$function rrr_cube_rooooooll:cube_block/turnblock/which/$(fucker)
$function rrr_cube_rooooooll:ka__er_cube_turn/$(fucker)

#清空回收站
function rrr_cube_rooooooll:cube_core/timeout