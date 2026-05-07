#sqrt2/2当作0.70711
scoreboard players set 0.5sqrt2 rrrcubecore_4count 70711

#从storage里下载一百万倍
execute store result score old_a rrrcubecore_4count run data get storage rrr_cube:trans qold[0] 1000000
execute store result score old_b rrrcubecore_4count run data get storage rrr_cube:trans qold[1] 1000000
execute store result score old_c rrrcubecore_4count run data get storage rrr_cube:trans qold[2] 1000000
execute store result score old_d rrrcubecore_4count run data get storage rrr_cube:trans qold[3] 1000000

##第0个元素
##a-b
scoreboard players operation temp rrrcubecore_4count = old_a rrrcubecore_4count
scoreboard players operation temp rrrcubecore_4count -= old_d rrrcubecore_4count
##*sqrt2/2
function rrr_cube_rooooooll:cube_block/turnblock/count4/0.5sqrt2
##上传
execute store result storage rrr_cube:trans qnew[0] float 0.000001 run scoreboard players get temp rrrcubecore_4count

##第1个元素
##a+b
scoreboard players operation temp rrrcubecore_4count = old_b rrrcubecore_4count
scoreboard players operation temp rrrcubecore_4count += old_c rrrcubecore_4count
##*sqrt2/2
function rrr_cube_rooooooll:cube_block/turnblock/count4/0.5sqrt2
##上传
execute store result storage rrr_cube:trans qnew[1] float 0.000001 run scoreboard players get temp rrrcubecore_4count

##第2个元素
##a+b
scoreboard players operation temp rrrcubecore_4count = old_c rrrcubecore_4count
scoreboard players operation temp rrrcubecore_4count -= old_b rrrcubecore_4count
##*sqrt2/2
function rrr_cube_rooooooll:cube_block/turnblock/count4/0.5sqrt2
##上传
execute store result storage rrr_cube:trans qnew[2] float 0.000001 run scoreboard players get temp rrrcubecore_4count

##第3个元素
##a+b
scoreboard players operation temp rrrcubecore_4count = old_a rrrcubecore_4count
scoreboard players operation temp rrrcubecore_4count += old_d rrrcubecore_4count
##*sqrt2/2
function rrr_cube_rooooooll:cube_block/turnblock/count4/0.5sqrt2
##上传
execute store result storage rrr_cube:trans qnew[3] float 0.000001 run scoreboard players get temp rrrcubecore_4count