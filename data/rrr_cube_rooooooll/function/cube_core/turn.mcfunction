#得到分数
$execute store result score t0 rrrcubecore_timeount run data get entity @s data.turnturn_cube[0].$(face)
$execute store result score t1 rrrcubecore_timeount run data get entity @s data.turnturn_cube[1].$(face)
$execute store result score t2 rrrcubecore_timeount run data get entity @s data.turnturn_cube[2].$(face)

#清除数据
$data remove entity @s data.turnturn_cube[0].$(face)
$data remove entity @s data.turnturn_cube[1].$(face)
$data remove entity @s data.turnturn_cube[2].$(face)


##CFOP右手公式的出现顺序
#execute if data entity @s data.turnturn_cube[0].right if data entity @s data.turnturn_cube[1].right if data entity @s data.turnturn_cube[2].right run return run function rrr_cube_rooooooll:cube_core/turnext {fucker:right}
#execute if data entity @s data.turnturn_cube[0].up if data entity @s data.turnturn_cube[1].up if data entity @s data.turnturn_cube[2].up run return run function rrr_cube_rooooooll:cube_core/turnext {fucker:up}
#execute if data entity @s data.turnturn_cube[0].front if data entity @s data.turnturn_cube[1].front if data entity @s data.turnturn_cube[2].front run return run function rrr_cube_rooooooll:cube_core/turnext {fucker:front}

execute if data entity @s data.turnturn_cube[0].down if data entity @s data.turnturn_cube[1].down if data entity @s data.turnturn_cube[2].down run return run function rrr_cube_rooooooll:cube_core/turnext {fucker:down}
execute if data entity @s data.turnturn_cube[0].left if data entity @s data.turnturn_cube[1].left if data entity @s data.turnturn_cube[2].left run return run function rrr_cube_rooooooll:cube_core/turnext {fucker:left}
#execute if data entity @s data.turnturn_cube[0].back if data entity @s data.turnturn_cube[1].back if data entity @s data.turnturn_cube[2].back run return run function rrr_cube_rooooooll:cube_core/turnext {fucker:back}
#中层极少出现
execute if data entity @s data.turnturn_cube[0].mid if data entity @s data.turnturn_cube[1].mid if data entity @s data.turnturn_cube[2].mid run return run function rrr_cube_rooooooll:cube_core/turnext {fucker:mid}
execute if data entity @s data.turnturn_cube[0].equator if data entity @s data.turnturn_cube[1].equator if data entity @s data.turnturn_cube[2].equator run return run function rrr_cube_rooooooll:cube_core/turnext {fucker:equator}
execute if data entity @s data.turnturn_cube[0].standing if data entity @s data.turnturn_cube[1].standing if data entity @s data.turnturn_cube[2].standing run return run function rrr_cube_rooooooll:cube_core/turnext {fucker:standing}


#维持原判
#判断旋转方向
function rrr_cube_rooooooll:cube_core/where

#测试模式1以上显示旋转方向
$execute if score testmode rrrcubecore_timeount matches 1.. run function rrr_cube_rooooooll:cube_core/display_lv1 {face:$(face)}
##测试模式2以上显示详细数据
execute if score testmode rrrcubecore_timeount matches 2.. run function rrr_cube_rooooooll:cube_core/display_lv2

#旋转方块
#$function rrr_cube_rooooooll:cube_block/turnblock/which/$(face)
$function rrr_cube_rooooooll:ka__er_cube_turn/$(face)

#清空回收站
function rrr_cube_rooooooll:cube_core/timeout