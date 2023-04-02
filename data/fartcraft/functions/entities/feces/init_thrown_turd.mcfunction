
tag @s add fartcraft.checked
tag @s add fartcraft.thrown_turd.model

summon marker ~ ~ ~ {Tags:["fartcraft","fartcraft.ticking","fartcraft.thrown_turd","fartcraft.new"]}
ride @e[type=marker,tag=fartcraft.new,sort=nearest,limit=1] mount @s
tag @e[type=marker,tag=fartcraft.new] remove fartcraft.new
