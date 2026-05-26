#把旋转动作发送给录制中的玩家身上对应的物品

#遍历玩家整个背包，不包含盔甲栏、合成栏、鼠标指针栏

item replace block -29999982 -60 22022220 container.0 from entity @s container.0
item replace block -29999982 -60 22022220 container.1 from entity @s container.1
item replace block -29999982 -60 22022220 container.2 from entity @s container.2
item replace block -29999982 -60 22022220 container.3 from entity @s container.3
item replace block -29999982 -60 22022220 container.4 from entity @s container.4
item replace block -29999982 -60 22022220 container.5 from entity @s container.5
item replace block -29999982 -60 22022220 container.6 from entity @s container.6
item replace block -29999982 -60 22022220 container.7 from entity @s container.7
item replace block -29999982 -60 22022220 container.8 from entity @s container.8
item replace block -29999982 -60 22022220 container.9 from entity @s container.9
item replace block -29999982 -60 22022220 container.10 from entity @s container.10
item replace block -29999982 -60 22022220 container.11 from entity @s container.11
item replace block -29999982 -60 22022220 container.12 from entity @s container.12
item replace block -29999982 -60 22022220 container.13 from entity @s container.13
item replace block -29999982 -60 22022220 container.14 from entity @s container.14
item replace block -29999982 -60 22022220 container.15 from entity @s container.15
item replace block -29999982 -60 22022220 container.16 from entity @s container.16
item replace block -29999982 -60 22022220 container.17 from entity @s container.17
item replace block -29999982 -60 22022220 container.18 from entity @s container.18
item replace block -29999982 -60 22022220 container.19 from entity @s container.19
item replace block -29999982 -60 22022220 container.20 from entity @s container.20
item replace block -29999982 -60 22022220 container.21 from entity @s container.21
item replace block -29999982 -60 22022220 container.22 from entity @s container.22
item replace block -29999982 -60 22022220 container.23 from entity @s container.23
item replace block -29999982 -60 22022220 container.24 from entity @s container.24
item replace block -29999982 -60 22022220 container.25 from entity @s container.25
item replace block -29999982 -60 22022220 container.26 from entity @s container.26

item replace block -29999982 -59 22022220 container.0 from entity @s container.27
item replace block -29999982 -59 22022220 container.1 from entity @s container.28
item replace block -29999982 -59 22022220 container.2 from entity @s container.29
item replace block -29999982 -59 22022220 container.3 from entity @s container.30
item replace block -29999982 -59 22022220 container.4 from entity @s container.31
item replace block -29999982 -59 22022220 container.5 from entity @s container.32
item replace block -29999982 -59 22022220 container.6 from entity @s container.33
item replace block -29999982 -59 22022220 container.7 from entity @s container.34
item replace block -29999982 -59 22022220 container.8 from entity @s container.35
item replace block -29999982 -59 22022220 container.9 from entity @s weapon.offhand

execute unless items block -29999982 -60 22022220 container.0 paper[custom_data~{rubik_cube_function:"export_formula",rubik_cube_recording:true}] run item replace block -29999982 -60 22022220 container.0 with air
execute unless items block -29999982 -60 22022220 container.1 paper[custom_data~{rubik_cube_function:"export_formula",rubik_cube_recording:true}] run item replace block -29999982 -60 22022220 container.1 with air
execute unless items block -29999982 -60 22022220 container.2 paper[custom_data~{rubik_cube_function:"export_formula",rubik_cube_recording:true}] run item replace block -29999982 -60 22022220 container.2 with air
execute unless items block -29999982 -60 22022220 container.3 paper[custom_data~{rubik_cube_function:"export_formula",rubik_cube_recording:true}] run item replace block -29999982 -60 22022220 container.3 with air
execute unless items block -29999982 -60 22022220 container.4 paper[custom_data~{rubik_cube_function:"export_formula",rubik_cube_recording:true}] run item replace block -29999982 -60 22022220 container.4 with air
execute unless items block -29999982 -60 22022220 container.5 paper[custom_data~{rubik_cube_function:"export_formula",rubik_cube_recording:true}] run item replace block -29999982 -60 22022220 container.5 with air
execute unless items block -29999982 -60 22022220 container.6 paper[custom_data~{rubik_cube_function:"export_formula",rubik_cube_recording:true}] run item replace block -29999982 -60 22022220 container.6 with air
execute unless items block -29999982 -60 22022220 container.7 paper[custom_data~{rubik_cube_function:"export_formula",rubik_cube_recording:true}] run item replace block -29999982 -60 22022220 container.7 with air
execute unless items block -29999982 -60 22022220 container.8 paper[custom_data~{rubik_cube_function:"export_formula",rubik_cube_recording:true}] run item replace block -29999982 -60 22022220 container.8 with air
execute unless items block -29999982 -60 22022220 container.9 paper[custom_data~{rubik_cube_function:"export_formula",rubik_cube_recording:true}] run item replace block -29999982 -60 22022220 container.9 with air
execute unless items block -29999982 -60 22022220 container.10 paper[custom_data~{rubik_cube_function:"export_formula",rubik_cube_recording:true}] run item replace block -29999982 -60 22022220 container.10 with air
execute unless items block -29999982 -60 22022220 container.11 paper[custom_data~{rubik_cube_function:"export_formula",rubik_cube_recording:true}] run item replace block -29999982 -60 22022220 container.11 with air
execute unless items block -29999982 -60 22022220 container.12 paper[custom_data~{rubik_cube_function:"export_formula",rubik_cube_recording:true}] run item replace block -29999982 -60 22022220 container.12 with air
execute unless items block -29999982 -60 22022220 container.13 paper[custom_data~{rubik_cube_function:"export_formula",rubik_cube_recording:true}] run item replace block -29999982 -60 22022220 container.13 with air
execute unless items block -29999982 -60 22022220 container.14 paper[custom_data~{rubik_cube_function:"export_formula",rubik_cube_recording:true}] run item replace block -29999982 -60 22022220 container.14 with air
execute unless items block -29999982 -60 22022220 container.15 paper[custom_data~{rubik_cube_function:"export_formula",rubik_cube_recording:true}] run item replace block -29999982 -60 22022220 container.15 with air
execute unless items block -29999982 -60 22022220 container.16 paper[custom_data~{rubik_cube_function:"export_formula",rubik_cube_recording:true}] run item replace block -29999982 -60 22022220 container.16 with air
execute unless items block -29999982 -60 22022220 container.17 paper[custom_data~{rubik_cube_function:"export_formula",rubik_cube_recording:true}] run item replace block -29999982 -60 22022220 container.17 with air
execute unless items block -29999982 -60 22022220 container.18 paper[custom_data~{rubik_cube_function:"export_formula",rubik_cube_recording:true}] run item replace block -29999982 -60 22022220 container.18 with air
execute unless items block -29999982 -60 22022220 container.19 paper[custom_data~{rubik_cube_function:"export_formula",rubik_cube_recording:true}] run item replace block -29999982 -60 22022220 container.19 with air
execute unless items block -29999982 -60 22022220 container.20 paper[custom_data~{rubik_cube_function:"export_formula",rubik_cube_recording:true}] run item replace block -29999982 -60 22022220 container.20 with air
execute unless items block -29999982 -60 22022220 container.21 paper[custom_data~{rubik_cube_function:"export_formula",rubik_cube_recording:true}] run item replace block -29999982 -60 22022220 container.21 with air
execute unless items block -29999982 -60 22022220 container.22 paper[custom_data~{rubik_cube_function:"export_formula",rubik_cube_recording:true}] run item replace block -29999982 -60 22022220 container.22 with air
execute unless items block -29999982 -60 22022220 container.23 paper[custom_data~{rubik_cube_function:"export_formula",rubik_cube_recording:true}] run item replace block -29999982 -60 22022220 container.23 with air
execute unless items block -29999982 -60 22022220 container.24 paper[custom_data~{rubik_cube_function:"export_formula",rubik_cube_recording:true}] run item replace block -29999982 -60 22022220 container.24 with air
execute unless items block -29999982 -60 22022220 container.25 paper[custom_data~{rubik_cube_function:"export_formula",rubik_cube_recording:true}] run item replace block -29999982 -60 22022220 container.25 with air
execute unless items block -29999982 -60 22022220 container.26 paper[custom_data~{rubik_cube_function:"export_formula",rubik_cube_recording:true}] run item replace block -29999982 -60 22022220 container.26 with air

execute unless items block -29999982 -59 22022220 container.0 paper[custom_data~{rubik_cube_function:"export_formula",rubik_cube_recording:true}] run item replace block -29999982 -59 22022220 container.0 with air
execute unless items block -29999982 -59 22022221 container.1 paper[custom_data~{rubik_cube_function:"export_formula",rubik_cube_recording:true}] run item replace block -29999982 -59 22022221 container.1 with air
execute unless items block -29999982 -59 22022222 container.2 paper[custom_data~{rubik_cube_function:"export_formula",rubik_cube_recording:true}] run item replace block -29999982 -59 22022222 container.2 with air
execute unless items block -29999982 -59 22022223 container.3 paper[custom_data~{rubik_cube_function:"export_formula",rubik_cube_recording:true}] run item replace block -29999982 -59 22022223 container.3 with air
execute unless items block -29999982 -59 22022224 container.4 paper[custom_data~{rubik_cube_function:"export_formula",rubik_cube_recording:true}] run item replace block -29999982 -59 22022224 container.4 with air
execute unless items block -29999982 -59 22022225 container.5 paper[custom_data~{rubik_cube_function:"export_formula",rubik_cube_recording:true}] run item replace block -29999982 -59 22022225 container.5 with air
execute unless items block -29999982 -59 22022226 container.6 paper[custom_data~{rubik_cube_function:"export_formula",rubik_cube_recording:true}] run item replace block -29999982 -59 22022226 container.6 with air
execute unless items block -29999982 -59 22022227 container.7 paper[custom_data~{rubik_cube_function:"export_formula",rubik_cube_recording:true}] run item replace block -29999982 -59 22022227 container.7 with air
execute unless items block -29999982 -59 22022228 container.8 paper[custom_data~{rubik_cube_function:"export_formula",rubik_cube_recording:true}] run item replace block -29999982 -59 22022228 container.8 with air
execute unless items block -29999982 -59 22022228 container.9 paper[custom_data~{rubik_cube_function:"export_formula",rubik_cube_recording:true}] run item replace block -29999982 -59 22022228 container.9 with air

item modify block -29999982 -60 22022220 container.0 {function:"set_custom_data",tag:{player_slot:0}}
item modify block -29999982 -60 22022220 container.1 {function:"set_custom_data",tag:{player_slot:1}}
item modify block -29999982 -60 22022220 container.2 {function:"set_custom_data",tag:{player_slot:2}}
item modify block -29999982 -60 22022220 container.3 {function:"set_custom_data",tag:{player_slot:3}}
item modify block -29999982 -60 22022220 container.4 {function:"set_custom_data",tag:{player_slot:4}}
item modify block -29999982 -60 22022220 container.5 {function:"set_custom_data",tag:{player_slot:5}}
item modify block -29999982 -60 22022220 container.6 {function:"set_custom_data",tag:{player_slot:6}}
item modify block -29999982 -60 22022220 container.7 {function:"set_custom_data",tag:{player_slot:7}}
item modify block -29999982 -60 22022220 container.8 {function:"set_custom_data",tag:{player_slot:8}}
item modify block -29999982 -60 22022220 container.9 {function:"set_custom_data",tag:{player_slot:9}}
item modify block -29999982 -60 22022220 container.10 {function:"set_custom_data",tag:{player_slot:10}}
item modify block -29999982 -60 22022220 container.11 {function:"set_custom_data",tag:{player_slot:11}}
item modify block -29999982 -60 22022220 container.12 {function:"set_custom_data",tag:{player_slot:12}}
item modify block -29999982 -60 22022220 container.13 {function:"set_custom_data",tag:{player_slot:13}}
item modify block -29999982 -60 22022220 container.14 {function:"set_custom_data",tag:{player_slot:14}}
item modify block -29999982 -60 22022220 container.15 {function:"set_custom_data",tag:{player_slot:15}}
item modify block -29999982 -60 22022220 container.16 {function:"set_custom_data",tag:{player_slot:16}}
item modify block -29999982 -60 22022220 container.17 {function:"set_custom_data",tag:{player_slot:17}}
item modify block -29999982 -60 22022220 container.18 {function:"set_custom_data",tag:{player_slot:18}}
item modify block -29999982 -60 22022220 container.19 {function:"set_custom_data",tag:{player_slot:19}}
item modify block -29999982 -60 22022220 container.20 {function:"set_custom_data",tag:{player_slot:20}}
item modify block -29999982 -60 22022220 container.21 {function:"set_custom_data",tag:{player_slot:21}}
item modify block -29999982 -60 22022220 container.22 {function:"set_custom_data",tag:{player_slot:22}}
item modify block -29999982 -60 22022220 container.23 {function:"set_custom_data",tag:{player_slot:23}}
item modify block -29999982 -60 22022220 container.24 {function:"set_custom_data",tag:{player_slot:24}}
item modify block -29999982 -60 22022220 container.25 {function:"set_custom_data",tag:{player_slot:25}}
item modify block -29999982 -60 22022220 container.26 {function:"set_custom_data",tag:{player_slot:26}}

item modify block -29999982 -59 22022220 container.0 {function:"set_custom_data",tag:{player_slot:27}}
item modify block -29999982 -59 22022220 container.1 {function:"set_custom_data",tag:{player_slot:28}}
item modify block -29999982 -59 22022220 container.2 {function:"set_custom_data",tag:{player_slot:29}}
item modify block -29999982 -59 22022220 container.3 {function:"set_custom_data",tag:{player_slot:30}}
item modify block -29999982 -59 22022220 container.4 {function:"set_custom_data",tag:{player_slot:31}}
item modify block -29999982 -59 22022220 container.5 {function:"set_custom_data",tag:{player_slot:32}}
item modify block -29999982 -59 22022220 container.6 {function:"set_custom_data",tag:{player_slot:33}}
item modify block -29999982 -59 22022220 container.7 {function:"set_custom_data",tag:{player_slot:34}}
item modify block -29999982 -59 22022220 container.8 {function:"set_custom_data",tag:{player_slot:35}}
item modify block -29999982 -59 22022220 container.9 {function:"set_custom_data",tag:{player_slot:36}}

data modify storage rubik_cube_3:io temp_items set from block -29999982 -60 22022220 Items
data modify storage rubik_cube_3:io temp_items append from block -29999982 -59 22022220 Items[]
data remove storage rubik_cube_3:io temp_items[].Slot

execute if data storage rubik_cube_3:io temp_items[0] run function rubik_cube_3:rotation/export_formula_to_item/loop1
