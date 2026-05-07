execute summon block_display run function rrr_cube_rooooooll:create/rrr_display/init {block:"minecraft:yellow_concrete"}

#summon minecraft:block_display ~ ~ ~ {block_state:{Name:"minecraft:lime_concrete"},transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[-0.15f,-0.15f,0.451f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.3f,0.3f,0.03f]},interpolation_duration:4,Tags:["rrr_block_display","rrr_block_display_center"]}


#summon minecraft:block_display ~ ~ ~ {block_state:{Name:"minecraft:red_concrete"},transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[-0.15f,-0.15f,0.451f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.3f,0.3f,0.03f]},interpolation_duration:4,Tags:["rrr_block_display","rrr_block_display_center"]}

#summon minecraft:block_display ~ ~ ~ {block_state:{Name:"minecraft:yellow_concrete"},transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[-0.15f,-0.15f,0.451f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.3f,0.3f,0.03f]},interpolation_duration:4,Tags:["rrr_block_display","rrr_block_display_center"]}


#summon minecraft:block_display ~ ~ ~ {block_state:{Name:"minecraft:orange_concrete"},transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[-0.15f,-0.15f,0.451f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.3f,0.3f,0.03f]},interpolation_duration:4,Tags:["rrr_block_display","rrr_block_display_center"]}

#summon minecraft:block_display ~ ~ ~ {block_state:{Name:"minecraft:white_concrete"},transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[-0.15f,-0.15f,0.451f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.3f,0.3f,0.03f]},interpolation_duration:4,Tags:["rrr_block_display","rrr_block_display_center"]}


execute as @e[distance=..3,type=block_display,tag=rrr_block_display] at @s run ride @s mount @n[tag=rrr_cube_core_init]