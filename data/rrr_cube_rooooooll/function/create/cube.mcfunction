#核心块 交互了也没用,以后承载所有的展示实体
execute positioned ~ ~ ~ summon interaction run function rrr_cube_rooooooll:create/core

#能操作的块
##棱块
execute positioned ~ ~ ~ run function rrr_cube_rooooooll:create/edge
##角块
execute positioned ~ ~ ~ run function rrr_cube_rooooooll:create/corner
##中心块
execute positioned ~ ~ ~ run function rrr_cube_rooooooll:create/center
