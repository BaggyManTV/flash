## passive powers

## step assist
execute as @e[tag=speedster,x_rotation=-90..0,scores={Sprint=1..}] run function flash:stepassist

## speed powers
execute as @e[tag=speedster] run function flash:speedpowers

scoreboard players reset @e[tag=!speedster] flashcrouch

## wallrunning
function flash:wallrunning

## arrow catching
function flash:arrowdodge

## flash ring
execute as @e[tag=speedster,tag=flashsuiton,scores={FlashRing=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:"{\"text\":\"Flash Ring\",\"color\":\"red\",\"bold\":\"true\",\"italic\":\"true\"}"},Unbreakable:1b,Damage:3}}}] run function flash:suitoff
execute as @e[tag=speedster,tag=flashsuiton,scores={FlashRing=1..},nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:"{\"text\":\"Flash Ring\",\"color\":\"red\",\"bold\":\"true\",\"italic\":\"true\"}"},Unbreakable:1b,Damage:3}}]}] run function flash:suitoff
execute as @e[tag=speedster,tag=!flashsuiton,scores={FlashRing=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:"{\"text\":\"Flash Ring\",\"color\":\"red\",\"bold\":\"true\",\"italic\":\"true\"}"},Unbreakable:1b,Damage:3}}}] run function flash:suiton
execute as @e[tag=speedster,tag=!flashsuiton,scores={FlashRing=1..},nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",Count:1b,tag:{display:{Name:"{\"text\":\"Flash Ring\",\"color\":\"red\",\"bold\":\"true\",\"italic\":\"true\"}"},Unbreakable:1b,Damage:3}}]}] run function flash:suiton
