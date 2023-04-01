
tag @s add fartcraft.checked
execute if data entity @s Item.tag{CustomModelData:6420500} run tag @s add fartcraft.fart_bottle.model

execute if entity @s[tag=fartcraft.fart_bottle.model] run summon marker ~ ~ ~ {Tags:["fartcraft.ticking","fartcraft.fart_bottle","fartcraft.new"]}
execute if entity @s[tag=fartcraft.fart_bottle.model] run ride @e[type=marker,tag=fartcraft.new,sort=nearest,limit=1] mount @s
execute if entity @s[tag=fartcraft.fart_bottle.model] run tag @e[type=marker,tag=fartcraft.new] remove fartcraft.new

