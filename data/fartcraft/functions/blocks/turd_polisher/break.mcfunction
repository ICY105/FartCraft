
setblock ~ ~ ~ minecraft:air
function energy:v1/api/break_machine
loot spawn ~ ~ ~ loot fartcraft:turd_polisher

kill @e[type=item,distance=..2,nbt={Item:{id:"minecraft:stone_slab"}},sort=nearest,limit=1]
execute on passengers run kill @s
kill @s
