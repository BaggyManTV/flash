## main

function flash:passivepowers

## become the flash
execute as @a[tag=!speedster] at @s if block ~1 ~1 ~ minecraft:brewing_stand if block ~-1 ~1 ~ minecraft:brewing_stand if block ~ ~1 ~1 minecraft:brewing_stand if block ~ ~1 ~-1 minecraft:brewing_stand if block ~ ~-1 ~ minecraft:beacon run tag @s add becomespeedster
execute as @a[tag=becomespeedster] run function flash:becomespeedster
