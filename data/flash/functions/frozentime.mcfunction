## frozentime
execute unless entity @s[tag=speedster] run effect give @s[type=!arrow] minecraft:slowness 1 10 true
execute unless entity @s[tag=speedster] run effect give @s[type=!arrow] minecraft:jump_boost 1 255 true
execute unless entity @s[tag=speedster] run effect give @s[type=!arrow] minecraft:mining_fatigue 1 10 true
execute at @s unless entity @s[tag=speedster] if block ~ ~-0.1 ~ minecraft:air run effect give @s[type=!arrow] minecraft:levitation 1 255 true
execute as @s[tag=speedster] run effect give @s minecraft:mining_fatigue 1 7 true
execute as @s[tag=speedster] run effect give @s minecraft:slowness 1 5 true
execute as @s[tag=speedster] run effect give @s minecraft:levitation 1 254 true
