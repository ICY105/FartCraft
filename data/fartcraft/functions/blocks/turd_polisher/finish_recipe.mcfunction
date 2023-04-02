
execute if score #state fartcraft.data matches 1 run loot replace block -30000000 0 3201 container.0 loot fartcraft:polished_turd
execute if score #state fartcraft.data matches 2 run loot replace block -30000000 0 3201 container.0 loot fartcraft:polished_golden_turd
execute on passengers if entity @s[tag=fartcraft.turd_polisher.item_holder] run data modify entity @s item set from block -30000000 0 3201 Items[0]
execute on passengers if entity @s[tag=fartcraft.turd_polisher.model] run scoreboard players remove @s energy.storage 4
