function rrr_cube_rooooooll:create/rrr_display/pls {block:"minecraft:light_blue_concrete",rot:[0.0f,-90.0f]}
function rrr_cube_rooooooll:create/rrr_display/pls {block:"minecraft:lime_concrete",rot:[0.0f,90.0f]}
function rrr_cube_rooooooll:create/rrr_display/pls {block:"minecraft:red_concrete",rot:[90.0f,0.0f]}
function rrr_cube_rooooooll:create/rrr_display/pls {block:"minecraft:yellow_concrete",rot:[0.0f,0.0f]}
function rrr_cube_rooooooll:create/rrr_display/pls {block:"minecraft:orange_concrete",rot:[270.0f,0.0f]}
function rrr_cube_rooooooll:create/rrr_display/pls {block:"minecraft:white_concrete",rot:[180.0f,0.0f]}


execute as @e[distance=..3,type=block_display,tag=rrr_block_display] at @s run ride @s mount @n[tag=rrr_cube_core_init]