## catching arrow
tag @e[tag=speedster,tag=!emptyhand] add emptyhand
tag @e[tag=emptyhand,nbt={SelectedItem:{}}] remove emptyhand
execute as @e[tag=emptyhand,tag=speedster] at @s if entity @e[type=arrow,nbt={inGround:0b},distance=..3,limit=1] run scoreboard players set @s arrowcatch 2
execute at @e[tag=speedster,tag=emptyhand,scores={arrowcatch=1..}] run kill @e[type=arrow,nbt={inGround:0b},distance=..3]
scoreboard players remove @e[scores={arrowcatch=0..}] arrowcatch 1
replaceitem entity @a[tag=emptyhand,scores={arrowcatch=1..}] weapon.mainhand minecraft:arrow 1

## arrow fatigue
scoreboard players add @e[scores={arrowcatch=1..}] Fatigue 1