## vibrate
tag @s add vibrating
## effects
effect clear @s poison
effect clear @s wither
effect give @s resistance 1 100 true
effect give @s hunger 1 6 true
effect give @s strength 1 10 true
execute at @s unless entity @s[tag=timefreezed] run playsound vibrate master @a[distance=..10] ~ ~ ~ 5 1 1
execute at @s[tag=timefreezed] run playsound slowvibrate master @a[distance=..10] ~ ~ ~ 5 1 1
execute at @s[tag=!timefreezed] unless block ~ ~1 ~ #batonblocks run tp @s ^ ^ ^2
execute as @s[scores={Sprint=1..}] at @s anchored eyes unless block ^ ^ ^1 #batonblocks run tp @s ^ ^ ^4
