
tag @s add fartcraft.checked
tag @s add fartcraft.fart_bottle.model

summon marker ~ ~ ~ {Tags:["fartcraft","fartcraft.ticking","fartcraft.fart_bottle","fartcraft.new"]}
ride @e[type=marker,tag=fartcraft.new,sort=nearest,limit=1] mount @s
tag @e[type=marker,tag=fartcraft.new] remove fartcraft.new
