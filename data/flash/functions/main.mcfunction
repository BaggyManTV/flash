## main

function flash:passivepowers

## become the flash
execute as @e[tag=!speedster] at @s if block ~1 ~1 ~ minecraft:brewing_stand if block ~-1 ~1 ~ minecraft:brewing_stand if block ~ ~1 ~1 minecraft:brewing_stand if block ~ ~1 ~-1 minecraft:brewing_stand if block ~ ~-1 ~ minecraft:beacon run tag @s add becomespeedster
execute as @e[tag=becomespeedster] run function flash:becomespeedster