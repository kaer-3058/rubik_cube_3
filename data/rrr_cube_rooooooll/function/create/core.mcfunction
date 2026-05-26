data merge entity @s {Tags:["rrr_cube_core","can_break_by_hit","rrr_cube_core_init","rrr_cube_entity_"],height:0.166666666666666666666,width:0.166666666666666}

#绑定中心实体
data modify entity @s data.center_entity_uuid set from storage rubik_cube_3:io temp_center_entity_uuid

#召唤展示实体骑着它
#中心块
#function rrr_cube_rooooooll:create/rrr_display/center
#面
#function rrr_cube_rooooooll:create/rrr_display/edge


tag @s remove rrr_cube_core_init
