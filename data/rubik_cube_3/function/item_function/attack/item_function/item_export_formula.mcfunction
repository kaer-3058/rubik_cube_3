#录制魔方旋转动作 - 左键

#读取录像机信息
item replace block -29999984 -60 22022220 container.0 from entity @s weapon.mainhand
data modify storage rubik_cube_3:io temp1 set from block -29999984 -60 22022220 RecordItem.components."minecraft:custom_data".formula
data modify storage rubik_cube_3:io temp2 set from block -29999984 -60 22022220 RecordItem.components."minecraft:lore"[-1]
execute unless data storage rubik_cube_3:io {temp2:"[]"} run data modify storage rubik_cube_3:io temp2 merge value {color:"dark_aqua",italic:false,text:"旋转动作：["}
execute if data storage rubik_cube_3:io {temp2:"[]"} run data modify storage rubik_cube_3:io temp2 set value {color:"dark_aqua",italic:false,text:"旋转动作：[]"}

#设置录像带信息
item replace block -29999984 -60 22022220 container.0 with paper[custom_name=[{text:"魔方旋转动作录像带",italic:false}],lore=[\
    [{keybind:"key.use",color:"gray",italic:false},{text:"正序播放旋转动作",color:"gray",italic:false}], \
    [{keybind:"key.attack",color:"gray",italic:false},{text:"逆序播放旋转动作",color:"gray",italic:false}], \
    "", \
    [{text:"旋转动作：[]",color:"dark_aqua",italic:false}] \
    \
    ],custom_data={is_rubik_cube_item:true,rubik_cube_function:"import_formula",formula:[]},max_stack_size=1]
data modify block -29999984 -60 22022220 RecordItem.components."minecraft:custom_data".formula set from storage rubik_cube_3:io temp1
data modify block -29999984 -60 22022220 RecordItem.components."minecraft:lore"[-1] set from storage rubik_cube_3:io temp2

#录像带外观是随机的一种唱片
execute store result storage rubik_cube_3:io temp1 int .001 run random value 1000..20999
execute store result score #temp1 int run data get storage rubik_cube_3:io temp1
execute if score #temp1 int matches 01 run item modify block -29999984 -60 22022220 container.0 {function:"set_components",components:{item_model:"music_disc_blocks"}}
execute if score #temp1 int matches 02 run item modify block -29999984 -60 22022220 container.0 {function:"set_components",components:{item_model:"music_disc_chirp"}}
execute if score #temp1 int matches 03 run item modify block -29999984 -60 22022220 container.0 {function:"set_components",components:{item_model:"music_disc_far"}}
execute if score #temp1 int matches 04 run item modify block -29999984 -60 22022220 container.0 {function:"set_components",components:{item_model:"music_disc_mall"}}
execute if score #temp1 int matches 05 run item modify block -29999984 -60 22022220 container.0 {function:"set_components",components:{item_model:"music_disc_mellohi"}}
execute if score #temp1 int matches 06 run item modify block -29999984 -60 22022220 container.0 {function:"set_components",components:{item_model:"music_disc_stal"}}
execute if score #temp1 int matches 07 run item modify block -29999984 -60 22022220 container.0 {function:"set_components",components:{item_model:"music_disc_strad"}}
execute if score #temp1 int matches 08 run item modify block -29999984 -60 22022220 container.0 {function:"set_components",components:{item_model:"music_disc_ward"}}
execute if score #temp1 int matches 09 run item modify block -29999984 -60 22022220 container.0 {function:"set_components",components:{item_model:"music_disc_lava_chicken"}}
execute if score #temp1 int matches 10 run item modify block -29999984 -60 22022220 container.0 {function:"set_components",components:{item_model:"music_disc_creator_music_box"}}
execute if score #temp1 int matches 11 run item modify block -29999984 -60 22022220 container.0 {function:"set_components",components:{item_model:"music_disc_wait"}}
execute if score #temp1 int matches 12 run item modify block -29999984 -60 22022220 container.0 {function:"set_components",components:{item_model:"music_disc_creator"}}
execute if score #temp1 int matches 13 run item modify block -29999984 -60 22022220 container.0 {function:"set_components",components:{item_model:"music_disc_precipice"}}
execute if score #temp1 int matches 14 run item modify block -29999984 -60 22022220 container.0 {function:"set_components",components:{item_model:"music_disc_otherside"}}
execute if score #temp1 int matches 15 run item modify block -29999984 -60 22022220 container.0 {function:"set_components",components:{item_model:"music_disc_relic"}}
execute if score #temp1 int matches 16 run item modify block -29999984 -60 22022220 container.0 {function:"set_components",components:{item_model:"music_disc_5"}}
execute if score #temp1 int matches 17 run item modify block -29999984 -60 22022220 container.0 {function:"set_components",components:{item_model:"music_disc_pigstep"}}
execute if score #temp1 int matches 18 run item modify block -29999984 -60 22022220 container.0 {function:"set_components",components:{item_model:"music_disc_tears"}}
execute if score #temp1 int matches 19 run item modify block -29999984 -60 22022220 container.0 {function:"set_components",components:{item_model:"music_disc_13"}}
execute if score #temp1 int matches 20 run item modify block -29999984 -60 22022220 container.0 {function:"set_components",components:{item_model:"music_disc_cat"}}

#给予录像带
data modify storage rubik_cube_3:io temp_uuid set from entity @s UUID
execute at @s run summon item ~ ~ ~ {Item:{id:"stone",count:1},Tags:["temp_item_entity_i"],Glowing:true,PickupDelay:0s}
execute at @s as @e[type=item,tag=temp_item_entity_i,distance=..10,limit=1] run function rubik_cube_3:item_function/attack/item_function/modify_item_entity_1

#把录像机数据还原
item replace entity @s weapon.mainhand with paper 1
item modify entity @s weapon.mainhand rubik_cube_3:item_component_2
