
setblock ~ ~ ~ minecraft:air
function energy:v1/api/break_machine
loot spawn ~ ~ ~ loot fartcraft:basic_fart_tank

kill @e[type=item,distance=..2,nbt={Item:{id:"minecraft:glass"}},sort=nearest,limit=1]
execute on passengers run kill @s
kill @s
