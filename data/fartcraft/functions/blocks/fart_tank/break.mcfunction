
setblock ~ ~ ~ minecraft:air
execute if entity @s[tag=fartcraft.fart_tank.basic] run loot spawn ~ ~ ~ loot fartcraft:basic_fart_tank
execute if entity @s[tag=fartcraft.fart_tank.advanced] run loot spawn ~ ~ ~ loot fartcraft:advanced_fart_tank

kill @e[type=item,distance=..2,nbt={Item:{id:"minecraft:glass"}},sort=nearest,limit=1]
execute on passengers run kill @s
kill @s
function energy:v1/api/break_machine
