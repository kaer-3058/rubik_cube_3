#数据不够多
scoreboard players set @s rrrcubecore_timeount 40
execute unless data entity @s data.turnturn_cube[2] run return fail

#此函数若成功执行则表示玩家互动触发了魔方旋转

#开转
##CFOP右手公式的出现顺序
execute if data entity @s data.turnturn_cube[0].right if data entity @s data.turnturn_cube[1].right if data entity @s data.turnturn_cube[2].right run return run function rrr_cube_rooooooll:cube_core/turn {face:right}
execute if data entity @s data.turnturn_cube[0].up if data entity @s data.turnturn_cube[1].up if data entity @s data.turnturn_cube[2].up run return run function rrr_cube_rooooooll:cube_core/turn {face:up}
execute if data entity @s data.turnturn_cube[0].front if data entity @s data.turnturn_cube[1].front if data entity @s data.turnturn_cube[2].front run return run function rrr_cube_rooooooll:cube_core/turn {face:front}
execute if data entity @s data.turnturn_cube[0].down if data entity @s data.turnturn_cube[1].down if data entity @s data.turnturn_cube[2].down run return run function rrr_cube_rooooooll:cube_core/turn {face:down}
execute if data entity @s data.turnturn_cube[0].left if data entity @s data.turnturn_cube[1].left if data entity @s data.turnturn_cube[2].left run return run function rrr_cube_rooooooll:cube_core/turn {face:left}
execute if data entity @s data.turnturn_cube[0].back if data entity @s data.turnturn_cube[1].back if data entity @s data.turnturn_cube[2].back run return run function rrr_cube_rooooooll:cube_core/turn {face:back}
#中层极少出现
execute if data entity @s data.turnturn_cube[0].mid if data entity @s data.turnturn_cube[1].mid if data entity @s data.turnturn_cube[2].mid run return run function rrr_cube_rooooooll:cube_core/turn {face:mid}
execute if data entity @s data.turnturn_cube[0].equator if data entity @s data.turnturn_cube[1].equator if data entity @s data.turnturn_cube[2].equator run return run function rrr_cube_rooooooll:cube_core/turn {face:equator}
execute if data entity @s data.turnturn_cube[0].standing if data entity @s data.turnturn_cube[1].standing if data entity @s data.turnturn_cube[2].standing run return run function rrr_cube_rooooooll:cube_core/turn {face:standing}
