## waterrunning

execute at @s[scores={WaterWalk=1..}] run tag @s add waterrunning
scoreboard players set @s WaterWalk 0
effect give @e[tag=waterrunning] minecraft:speed 1 50 true
effect give @e[tag=waterrunning] minecraft:dolphins_grace 1 255 true
execute at @e[tag=waterrunning] run particle dust 1.000 0.255 0.071 1 ~ ~ ~ 0.3 1 0.3 0.3 30 normal
execute at @e[tag=waterrunning] run particle dust 1.000 0.780 0.169 1 ~ ~ ~ 0.3 1 0.3 0.3 8 normal
execute at @s[tag=waterrunning] run playsound minecraft:run master @a[distance=..6] ~ ~ ~ 0.6 1 1
execute as @e[tag=waterrunning] at @s unless block ^ ^ ^1 water unless block ^ ^ ^1 air run tp ^ ^1 ^1
tp @e[tag=watercollider] 0 0 0
kill @e[tag=watercollider]
execute as @e[tag=waterrunning] run summon ghast 0 0 0 {CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,NoAI:1b,Tags:["watercollider"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:20000000,ShowParticles:0b}]}
execute as @e[tag=waterrunning] run summon ghast 0 0 0 {CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,NoAI:1b,Tags:["watercollider"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:20000000,ShowParticles:0b}]}
execute as @e[tag=waterrunning] run summon ghast 0 0 0 {CustomNameVisible:0b,NoGravity:1b,Silent:1b,Invulnerable:1b,NoAI:1b,Tags:["watercollider"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:20000000,ShowParticles:0b}]}
execute at @e[tag=waterrunning] run tp @e[tag=watercollider] ^ ^ ^-0.2
execute at @e[tag=waterrunning] run tag @s remove waterrunning
