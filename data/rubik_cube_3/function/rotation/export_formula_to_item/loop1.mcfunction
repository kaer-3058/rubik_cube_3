#把旋转动作发送给录制中的玩家身上对应的物品
#这是一个循环

# "minecraft:custom_data": \
{ \
    rubik_cube_recording: true, #用于表示这个物品符合接收 \
    target_pos: [-15.5, 69.5, -32.5], \
    is_rubik_cube_item: true, \
    rubik_cube_function: "export_formula", \
    formula: [] \
}

#此数据结构来自：function rubik_cube_3:item_function/use/item_function/item_export_formula

# data get entity @s SelectedItem
# data get block -29999984 -60 22022220

#取出物品
data modify storage rubik_cube_3:io temp_components set value {}
data modify storage rubik_cube_3:io temp_components set from storage rubik_cube_3:io temp_items[0].components

#找到追踪位置的魔方，若其正在计算旋转(含有临时tag)，则获取旋转符号
execute as b09e-44-fded-6-efa5ffffef64 run function rubik_cube_3:rotation/export_formula_to_item/as_entity_1
data modify storage rubik_cube_3:io temp2 set from storage rubik_cube_3:io temp_components."minecraft:custom_data".formula

#显示获取到的旋转符号
data modify entity 4949f27b-5362-4e14-be04-fd7b9272a414 text set value ["[",{nbt:"temp2[]",storage:"rubik_cube_3:io",interpret:true,separator:","},"]"]
data modify storage rubik_cube_3:io temp_components."minecraft:lore"[-1] set from entity 4949f27b-5362-4e14-be04-fd7b9272a414 text

#把修改后的信息合并到原物品，然后把物品替换玩家背包对应的格子
data modify storage rubik_cube_3:io temp_items[0].components set from storage rubik_cube_3:io temp_components
data modify block -29999984 -60 22022220 RecordItem set from storage rubik_cube_3:io temp_items[0]
data modify storage rubik_cube_3:io temp1 set from storage rubik_cube_3:io temp_items[0].components."minecraft:custom_data".player_slot
execute unless data storage rubik_cube_3:io {temp1:36} run function rubik_cube_3:rotation/export_formula_to_item/macro1 with storage rubik_cube_3:io
execute if data storage rubik_cube_3:io {temp1:36} run item replace entity @s weapon.offhand from block -29999984 -60 22022220 container.0

#循环执行
data remove storage rubik_cube_3:io temp_items[0]
execute if data storage rubik_cube_3:io temp_items[0] run function rubik_cube_3:rotation/export_formula_to_item/loop1
