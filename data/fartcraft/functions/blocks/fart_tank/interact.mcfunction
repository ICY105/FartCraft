
scoreboard players set #state fartcraft.data 0
execute if data entity @p[tag=fartcraft.interact] SelectedItem.tag.fartcraft{id:"fart_in_a_bottle"} run scoreboard players set #state fartcraft.data 1
execute if data entity @p[tag=fartcraft.interact] SelectedItem{id:"minecraft:glass_bottle"} run scoreboard players set #state fartcraft.data 2

scoreboard players set #energy fartcraft.data -1
scoreboard players set #max_energy fartcraft.data -1
execute on passengers if entity @s[tag=fartcraft.fart_tank.model] run scoreboard players operation #energy fartcraft.data = @s energy.storage
execute on passengers if entity @s[tag=fartcraft.fart_tank.model] run scoreboard players operation #max_energy fartcraft.data = @s energy.max_storage

execute if score #state fartcraft.data matches 1 if score #energy fartcraft.data < #max_energy fartcraft.data run clear @p[tag=fartcraft.interact] snowball{fartcraft:{id:"fart_in_a_bottle"}} 1
execute if score #state fartcraft.data matches 1 if score #energy fartcraft.data < #max_energy fartcraft.data run give @p[tag=fartcraft.interact] glass_bottle
execute if score #state fartcraft.data matches 1 if score #energy fartcraft.data < #max_energy fartcraft.data on passengers if entity @s[tag=fartcraft.fart_tank.model] run scoreboard players add @s energy.storage 1

execute if score #state fartcraft.data matches 2 if score #energy fartcraft.data matches 1.. run clear @p[tag=fartcraft.interact] glass_bottle 1
execute if score #state fartcraft.data matches 2 if score #energy fartcraft.data matches 1.. run loot give @p[tag=fartcraft.interact] loot fartcraft:fart_in_a_bottle
execute if score #state fartcraft.data matches 2 if score #energy fartcraft.data matches 1.. on passengers if entity @s[tag=fartcraft.fart_tank.model] run scoreboard players remove @s energy.storage 1
