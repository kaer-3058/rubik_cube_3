$data merge entity @s {block_state:{Name:"$(block)"},transformation:{left_rotation:[1.0f,0.0f,0.0f,0.0f],translation:[0.0f,0.0f,0.0f],right_rotation:[1.0f,0.0f,0.0f,0.0f],scale:[0.3f,0.3f,0.453f]},interpolation_duration:4,Tags:["rrr_block_display","rrr_block_display_center"]}

#上传数据
#data modify storage rrr_cube:trans qq set from entity @s transformation
##初始旋转
#data modify storage rrr_cube:trans qold set from entity @s transformation.right_rotation

#data remove storage rrr_cube:trans qnew
#data modify storage rrr_cube:trans qnew set value [0.0f,0.0f,0.0f,0.0f]
#计算
#function rrr_cube_rooooooll:cube_block/turnblock/count4/x
#data modify storage rrr_cube:trans qold set from storage rrr_cube:trans qnew
#function rrr_cube_rooooooll:cube_block/turnblock/count4/x
#data modify storage rrr_cube:trans qold set from storage rrr_cube:trans qnew
#function rrr_cube_rooooooll:cube_block/turnblock/count4/x
#data modify storage rrr_cube:trans qq.right_rotation set from storage rrr_cube:trans qnew



#再次旋转
#data modify storage rrr_cube:trans qold set from entity @s transformation.left_rotation

#data remove storage rrr_cube:trans qnew
#data modify storage rrr_cube:trans qnew set value [0.0f,0.0f,0.0f,0.0f]
#计算
#function rrr_cube_rooooooll:cube_block/turnblock/count4/x

#data modify storage rrr_cube:trans qq.left_rotation set from storage rrr_cube:trans qnew



#data modify entity @s transformation set from storage rrr_cube:trans qq