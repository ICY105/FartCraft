
item replace block -30000000 0 3201 container.0 with minecraft:stick
execute on passengers if entity @s[tag=fartcraft.turd_polisher.item_holder] run data modify block -30000000 0 3201 Items[0] set from entity @s item
loot spawn ~ ~ ~ mine -30000000 0 3201 minecraft:air{drop_contents:true}

setblock ~ ~ ~ minecraft:air
loot spawn ~ ~ ~ loot fartcraft:turd_polisher

kill @e[type=item,distance=..2,nbt={Item:{id:"minecraft:stone_slab"}},sort=nearest,limit=1]
execute on passengers run kill @s
kill @s
function energy:v1/api/break_machine
