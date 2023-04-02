
scoreboard players set #state fartcraft.data 0
execute if data entity @p[tag=fartcraft.interact] SelectedItem.id run scoreboard players set #state fartcraft.data 1
execute on passengers if entity @s[tag=fartcraft.turd_polisher.item_holder] unless data entity @s item{id:"minecraft:air"} run scoreboard players set #state fartcraft.data 2
execute if score #state fartcraft.data matches 2 if data entity @p[tag=fartcraft.interact] SelectedItem.id run scoreboard players set #state fartcraft.data 0

execute if score #state fartcraft.data matches 1 run item replace block -30000000 0 3201 container.0 from entity @p[tag=fartcraft.interact] weapon.mainhand
execute if score #state fartcraft.data matches 1 run data modify block -30000000 0 3201 Items[0].Count set value 1b
execute if score #state fartcraft.data matches 1 on passengers if entity @s[tag=fartcraft.turd_polisher.item_holder] run data modify entity @s item set from block -30000000 0 3201 Items[0]
execute if score #state fartcraft.data matches 1 run item modify entity @p[tag=fartcraft.interact] weapon.mainhand fartcraft:decrement_count

execute if score #state fartcraft.data matches 2 run item replace block -30000000 0 3201 container.0 with minecraft:stick
execute if score #state fartcraft.data matches 2 on passengers if entity @s[tag=fartcraft.turd_polisher.item_holder] run data modify block -30000000 0 3201 Items[0] set from entity @s item
execute if score #state fartcraft.data matches 2 on passengers if entity @s[tag=fartcraft.turd_polisher.item_holder] run data modify entity @s item set value {}
execute if score #state fartcraft.data matches 2 run item replace entity @p[tag=fartcraft.interact] weapon.mainhand from block -30000000 0 3201 container.0
