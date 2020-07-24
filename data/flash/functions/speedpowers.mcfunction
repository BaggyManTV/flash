## speed powers

## particle and sound epicness
execute at @s[scores={Sprint=1..}] positioned ~ ~0.5 ~ run particle dust 1.000 0.255 0.071 1 ~ ~0.2 ~ 0.3 0.5 0.3 0.3 30 normal
execute at @s[scores={Sprint=1..}] positioned ~ ~.5 ~ run particle dust 1.000 0.780 0.169 1 ~ ~0.2 ~ 0.3 0.5 0.3 0.3 8 normal
execute at @s[scores={Sprint=1..}] run playsound minecraft:run master @a[distance=..6] ~ ~ ~ 0.6 1 1
effect clear @s strength

## haste and speed punch mobs
effect give @s minecraft:haste 1 3 true

## strengh and resistance and regen
effect give @s minecraft:strength 1 2 true
effect give @s[scores={Sprint=1..}] strength 1 5 true
effect give @s[tag=flashsuiton] fire_resistance 1 1 true
effect give @s minecraft:resistance 1 2 true
effect give @s minecraft:regeneration 1 4 true

## harm enemies when run past
execute at @s[scores={Sprint=1..}] run execute as @e[distance=..1.5,tag=!speedster] run data merge entity @s {Fire:100s}

## vibrate
execute as @s[tag=vibrating] at @s unless entity @s[nbt={SelectedItemSlot:8}] run fill ~ ~ ~ ~ ~1 ~ air
tag @s[tag=vibrating] remove vibrating
execute as @s[nbt={SelectedItemSlot:8}] run function flash:vibrate

## super speed
#effect clear @s[scores={Sprint=0}] minecraft:speed
effect give @s[scores={Sprint=1..}] minecraft:speed 1 50 true
scoreboard players set @s[scores={Sprint=1..}] Sprint 0

## hunger
effect give @s minecraft:hunger 1 1 true

## no fatigue
scoreboard players set @s Standstill 295

## water running
execute as @s at @s run function flash:waterrunning

## stop time
execute as @s[scores={flashcrouch=1..,Food=7..}] at @s run function flash:timefreeze
execute if entity @s[scores={flashcrouch=0}] as @e[tag=timefreezed] run data merge entity @s {NoAI:false,Silent:0b,NoGravity:0b}
execute if entity @s[scores={Food=..6}] as @e[tag=timefreezed] run data merge entity @s {NoAI:false,Silent:0b,NoGravity:0b}
execute at @s[tag=timefreezed,scores={flashcrouch=0}] run playsound minecraft:speedup master @a[distance=..6] ~ ~ ~ 0.6 1 1
execute at @s[tag=timefreezed,scores={Food=..6}] run playsound minecraft:speedup master @a[distance=..6] ~ ~ ~ 0.6 1 1
execute as @s[tag=timefreezed,scores={flashcrouch=0}] run effect clear @s levitation
execute as @s[tag=timefreezed,scores={flashcrouch=0}] run effect clear @s slowness
execute as @s[tag=timefreezed,scores={flashcrouch=0}] run effect clear @s speed
execute as @s[tag=timefreezed,scores={Food=..6}] run effect clear @s levitation
execute as @s[tag=timefreezed,scores={Food=..6}] run effect clear @s speed
execute as @s[tag=timefreezed,scores={Food=..6}] run effect clear @s slowness
execute as @s[tag=!timefreezed] run attribute @s minecraft:generic.knockback_resistance base set 0
execute if entity @s[tag=timefreezed,scores={flashcrouch=0}] as @e[tag=timefreezed,tag=!speedster,type=!player] run function flash:unfreezemotion
execute if entity @s[tag=timefreezed,scores={flashcrouch=0}] run tag @e[tag=timefreezed] remove timefreezed
execute if entity @s[tag=timefreezed,scores={Food=..6}] run tag @e[tag=timefreezed] remove timefreezed
execute if entity @s[scores={flashcrouch=0}] run gamerule doDaylightCycle true
execute if entity @s[scores={Food=..6}] run gamerule doDaylightCycle true
execute if entity @s[scores={flashcrouch=0}] run gamerule randomTickSpeed 3
execute if entity @s[scores={Food=..6}] run gamerule randomTickSpeed 3
scoreboard players reset @s[scores={flashcrouch=0}] flashcrouch
scoreboard players set @s[scores={flashcrouch=1..}] flashcrouch 0
