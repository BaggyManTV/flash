## becomespeedster
execute at @s run summon minecraft:lightning_bolt
title @s title [{"text":"Welcome...","color":"red","bold":"true"}]
title @s subtitle [{"text":"to the speedforce!","color":"gold","bold":"true","italic":"true"}]
tag @s add speedster
advancement grant @s only flash:root
tag @s remove becomespeedster
