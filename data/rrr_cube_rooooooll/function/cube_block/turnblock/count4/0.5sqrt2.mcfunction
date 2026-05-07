#尝试乘sqrt2/2
#能不能整除十万
scoreboard players set 0.1m rrrcubecore_4count 100000
scoreboard players operation temp1 rrrcubecore_4count = temp rrrcubecore_4count
scoreboard players operation temp1 rrrcubecore_4count %= 1m rrrcubecore_4count

#能
execute if score temp1 rrrcubecore_4count matches 0 run return run function rrr_cube_rooooooll:cube_block/turnblock/count4/simple

#不能
##原本的数是+sqrt2/2
execute if score temp rrrcubecore_4count matches 0.. run return run scoreboard players set temp rrrcubecore_4count 500000
##原本的数是-sqrt2/2
scoreboard players set temp rrrcubecore_4count -500000