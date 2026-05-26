#快速视追
execute positioned ^ ^ ^ run tp @s ^ ^ ^ ~ ~
execute as @e[tag=rrr_cube_entity_,type=interaction,distance=..20] at @s positioned ~ ~1 ~ \
    rotated as b09e-44-fded-6-efa5ffffef64 \
    positioned ^ ^ ^1000 \
    facing entity b09e-44-fded-6-efa5ffffef64 feet \
    positioned ^ ^ ^1000 \
    facing entity @s feet positioned ^ ^ ^.15 \
    positioned ~-.2 ~-.15 ~-.2 \
    as @s[dx=0,dy=0,dz=0] \
    positioned ~-.6 ~.3 ~-.3 \
    at @s[dx=0,dy=0,dz=0] \
    run tag @s add rubik_cube_3_item_attack

tp .0 .0 .0
