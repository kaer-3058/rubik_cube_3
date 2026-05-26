#核心块 交互了也没用,以后承载所有的展示实体
execute positioned ~ ~-0.083333333333333 ~ summon interaction run function rrr_cube_rooooooll:create/core

#能操作的块
##棱块
execute positioned ~ ~ ~ run function rrr_cube_rooooooll:create/edge
##角块
execute positioned ~ ~ ~ run function rrr_cube_rooooooll:create/corner
##中心块
execute positioned ~ ~ ~ run function rrr_cube_rooooooll:create/center

#绑定中心实体
execute as @e[type=interaction,tag=rrr_cube_temp_summon_,distance=..6,limit=26] run data modify entity @s data.center_entity_uuid set from storage rubik_cube_3:io temp_center_entity_uuid
tag @e[type=interaction,tag=rrr_cube_temp_summon_,distance=.0..] remove rrr_cube_temp_summon_
