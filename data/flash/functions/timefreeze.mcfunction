## timefreeze
execute at @s[tag=!timefreezed] run playsound minecraft:slowdown master @a[distance=..6] ~ ~ ~ 0.6 1 1
execute at @s as @e[tag=!timefreezed,type=!player,distance=..100] run function flash:freezetimestoremotion

## noai
execute as @e[tag=!timefreezed] unless entity @s[tag=speedster] run data merge entity @s {NoAI:true,Motion:[0,0,0],Silent:1b,NoGravity:1b}

tag @e[distance=..100] add timefreezed

## slow down everything
execute as @e[tag=timefreezed] run function flash:frozentime

## dust in the air
particle minecraft:mycelium ~ ~ ~ 10 1 10 0.2 100 normal



## speed and particles
effect give @s minecraft:speed 1 90 true
effect give @s minecraft:hunger 1 10 true
execute at @s rotated ~ 0 positioned ^ ^.5 ^-.5 run particle dust 1.000 0.255 0.071 1 ~ ~0.2 ~ 0.3 .5 0.3 0.3 25 normal
execute at @s rotated ~ 0 positioned ^ ^.5 ^-.5 run particle dust 1.000 0.780 0.169 1 ~ ~0.2 ~ 0.3 .5 0.3 0.3 7 normal

## tickspeed and daylight cycle
gamerule doDaylightCycle false
gamerule randomTickSpeed 0
