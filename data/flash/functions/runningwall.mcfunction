## runningwall (called by wallrunning)
effect clear @s levitation
execute at @s positioned ~ ~-1 ~ if block ^ ^-1 ^ #batonblocks run tag @s remove wallrunning
execute as @s[tag=timefreezed] run effect give @s minecraft:levitation 1 4 true
execute as @s[tag=!timefreezed] run effect give @s minecraft:levitation 1 40 true
execute as @s[tag=!timefreezed] at @s positioned ~ ~1 ~ if block ^ ^-1 ^ #batonblocks run effect clear @s minecraft:levitation
#execute as @e[tag=wallrunning,tag=!timefreezed] at @s positioned ~ ~1 ~ if block ^ ^-1 ^ #batonblocks run effect give @s minecraft:levitation 1 200 true
effect give @s minecraft:jump_boost 1 255 true
execute at @s run particle dust 1.000 0.255 0.071 1 ~ ~ ~ 0.3 1 0.3 0.3 30 normal
execute at @s run particle dust 1.000 0.780 0.169 1 ~ ~ ~ 0.3 1 0.3 0.3 8 normal
execute at @s run playsound minecraft:run master @a[distance=..6] ~ ~ ~ 0.6 1 1

effect clear @s[x_rotation=-89..] minecraft:levitation
tag @s[x_rotation=-89..] remove wallrunning
