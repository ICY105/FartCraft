
setblock ~ ~ ~ minecraft:air
loot spawn ~ ~ ~ loot fartcraft:fart_disperser

execute on passengers run kill @s
kill @s
function energy:v1/api/break_machine
