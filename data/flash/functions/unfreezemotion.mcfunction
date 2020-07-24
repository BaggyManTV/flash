##store motion
execute store result entity @s Motion.[0] double 0.01 run scoreboard players get @s freezemotionx
execute store result entity @s Motion.[1] double 0.01 run scoreboard players get @s freezemotiony
execute store result entity @s Motion.[2] double 0.01 run scoreboard players get @s freezemotionz
scoreboard players reset @s freezemotionx
scoreboard players reset @s freezemotiony
scoreboard players reset @s freezemotionz
