## suit on
tag @s remove flashsuitoff

## mask
execute unless entity @s[nbt={Inventory:[{Slot:103b}]}] run replaceitem entity @s armor.head minecraft:player_head{display:{Name:"{\"text\":\"The Flash's Mask\",\"color\":\"red\",\"bold\":\"true\",\"italic\":\"true\"}"},HideFlags:63,Enchantments:[{id:"minecraft:protection",lvl:3},{id:"minecraft:fire_protection",lvl:1},{id:"minecraft:blast_protection",lvl:2},{id:"minecraft:projectile_protection",lvl:3},{id:"minecraft:aqua_affinity",lvl:1}],SkullOwner:"The_Flash"} 1

## jacket
execute unless entity @s[nbt={Inventory:[{Slot:102b}]}] run replaceitem entity @s armor.chest minecraft:leather_chestplate{display:{Name:"{\"text\":\"The Flash's Jacket\",\"color\":\"red\",\"bold\":\"true\",\"italic\":\"true\"}",color:11927552},HideFlags:63,Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:3},{id:"minecraft:fire_protection",lvl:1},{id:"minecraft:blast_protection",lvl:2},{id:"minecraft:projectile_protection",lvl:3}]} 1

## Greaves
execute unless entity @s[nbt={Inventory:[{Slot:101b}]}] run replaceitem entity @s armor.legs minecraft:leather_leggings{display:{Name:"{\"text\":\"The Flash's Greaves\",\"color\":\"red\",\"bold\":\"true\",\"italic\":\"true\"}",color:11927552},HideFlags:63,Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:3},{id:"minecraft:fire_protection",lvl:1},{id:"minecraft:blast_protection",lvl:2},{id:"minecraft:projectile_protection",lvl:3}]} 1

## boots
execute unless entity @s[nbt={Inventory:[{Slot:100b}]}] run replaceitem entity @s armor.feet minecraft:leather_boots{display:{Name:"{\"text\":\"The Flash's Boots\",\"color\":\"red\",\"bold\":\"true\",\"italic\":\"true\"}",color:11927552},HideFlags:63,Unbreakable:1b,Enchantments:[{id:"minecraft:protection",lvl:3},{id:"minecraft:fire_protection",lvl:1},{id:"minecraft:feather_falling",lvl:3},{id:"minecraft:blast_protection",lvl:2},{id:"minecraft:projectile_protection",lvl:2}]} 1
tag @s add flashsuiton
scoreboard players reset @s FlashRing