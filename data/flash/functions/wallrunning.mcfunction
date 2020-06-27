## wall running

execute as @e[tag=speedster,x_rotation=-90,scores={Food=7..}] at @s positioned ~ ~ ~ unless block ^ ^-0.5 ^ #batonblocks run tag @s add wallrunning
execute as @e[tag=wallrunning] run function flash:runningwall

## no fall damage near walls
execute as @e[tag=speedster,x_rotation=90,scores={Food=7..}] at @s positioned ~ ~1 ~ unless block ^ ^-1 ^ #batonblocks unless block ^ ^-0.5 ^ minecraft:cave_air run tag @s add wallfall
execute as @e[tag=wallfall,x_rotation=..89] run tag @s remove wallfall
execute as @e[tag=wallfall] unless entity @s[tag=timefreezed] run effect clear @s minecraft:jump_boost
execute as @e[tag=wallfall] unless entity @s[tag=timefreezed] if block ~ ~-0.5 ~ #batonblocks run effect give @s minecraft:jump_boost 1 255 true
execute at @e[tag=wallfall] run particle dust 1.000 0.255 0.071 1 ~ ~ ~ 0.3 1 0.3 0.3 30 normal
execute at @e[tag=wallfall] run particle dust 1.000 0.780 0.169 1 ~ ~ ~ 0.3 1 0.3 0.3 8 normal
execute as @e[tag=wallfall] unless block ~ ~-1 ~ #batonblocks run tag @s remove wallfall
