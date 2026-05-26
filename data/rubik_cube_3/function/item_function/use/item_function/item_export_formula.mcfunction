#录制魔方旋转动作 - 右键

# "minecraft:custom_data": \
{ \
    rubik_cube_recording: true, #用于表示这个物品符合接收 \
    target_pos: [-15.5, 69.5, -32.5], \
    is_rubik_cube_item: true, \
    rubik_cube_function: "export_formula", \
    formula: [] \
}

# function rubik_cube_3:item_function/use/item_function/item_export_formula

item replace block -29999984 -60 22022220 container.0 from entity @s weapon.mainhand rubik_cube_3:item_component_1

execute as b09e-44-fded-6-efa5ffffef64 run function rubik_cube_3:item_function/use/item_function/as_entity_1
data modify storage rubik_cube_3:io temp2 set value ["[","",", ","",", ","","] "]
data modify storage rubik_cube_3:io temp2[1] set string storage rubik_cube_3:io temp1[0] 0 -1
data modify storage rubik_cube_3:io temp2[3] set string storage rubik_cube_3:io temp1[1] 0 -1
data modify storage rubik_cube_3:io temp2[5] set string storage rubik_cube_3:io temp1[2] 0 -1
data modify entity 4949f27b-5362-4e14-be04-fd7b9272a414 text set value ["追踪位置：",{nbt:"temp2",storage:"rubik_cube_3:io",interpret:true}]

data modify block -29999984 -60 22022220 RecordItem.components."minecraft:lore" append from entity 4949f27b-5362-4e14-be04-fd7b9272a414 text
data modify storage rubik_cube_3:io temp3 set value ["录制动作：","[]"]
data modify block -29999984 -60 22022220 RecordItem.components."minecraft:lore" append from storage rubik_cube_3:io temp3[]

item replace entity @s weapon.mainhand from block -29999984 -60 22022220 container.0
