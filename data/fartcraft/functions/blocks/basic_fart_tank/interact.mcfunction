
scoreboard players set #state fartcraft.data 0
execute if data entity @p[tag=fartcraft.interact] SelectedItem.tag.fartcraft{id:"fart_in_a_bottle"} run scoreboard players set #state fartcraft.data 1
execute if data entity @p[tag=fartcraft.interact] SelectedItem{id:"minecraft:glass_bottle"} run scoreboard players set #state fartcraft.data 2

execute if score #state fartcraft.data matches 1 if score @s energy.storage matches ..63 run clear @p[tag=fartcraft.interact] snowball{fartcraft:{id:"fart_in_a_bottle"}} 1
execute if score #state fartcraft.data matches 1 if score @s energy.storage matches ..63 run give @p[tag=fartcraft.interact] glass_bottle
execute if score #state fartcraft.data matches 1 if score @s energy.storage matches ..63 run scoreboard players add @s energy.storage 1

execute if score #state fartcraft.data matches 2 if score @s energy.storage matches 1.. run clear @p[tag=fartcraft.interact] glass_bottle 1
execute if score #state fartcraft.data matches 2 if score @s energy.storage matches 1.. run loot give @p[tag=fartcraft.interact] loot fartcraft:fart_in_a_bottle
execute if score #state fartcraft.data matches 2 if score @s energy.storage matches 1.. run scoreboard players remove @s energy.storage 1
