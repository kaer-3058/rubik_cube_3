
#上传数据
data modify storage rrr_cube:trans qold set from entity @s transformation.left_rotation

data remove storage rrr_cube:trans qnew
data modify storage rrr_cube:trans qnew set value [1.0f,0.0f,0.0f,0.0f]
#计算
execute if score roundwhat rrrcubecore_4count matches 0 run function rrr_cube_rooooooll:cube_block/turnblock/count4/x
execute if score roundwhat rrrcubecore_4count matches 1 run function rrr_cube_rooooooll:cube_block/turnblock/count4/y
execute if score roundwhat rrrcubecore_4count matches 2 run function rrr_cube_rooooooll:cube_block/turnblock/count4/z


#data modify entity @s transformation.left_rotation merge from storage rrr_cube:trans qnew

data modify storage rrr_cube:trans qq set from entity @s transformation
data modify storage rrr_cube:trans qq.left_rotation set from storage rrr_cube:trans qnew
data modify entity @s transformation set from storage rrr_cube:trans qq