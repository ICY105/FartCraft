
execute if score #success fartcraft.data matches 0 if data entity @s SelectedItem{id:"minecraft:glass_bottle"} run scoreboard players set #success fartcraft.data 1
execute if score #success fartcraft.data matches 0 if data entity @s Inventory[{id:"minecraft:glass_bottle",Slot:-106b}] run scoreboard players set #success fartcraft.data 1
execute if score #success fartcraft.data matches 1 run clear @s[gamemode=!creative] minecraft:glass_bottle 1
execute if score #success fartcraft.data matches 1 run loot give @s loot fartcraft:fart_in_a_bottle
execute if score #success fartcraft.data matches 1 run scoreboard players set #success fartcraft.data 2
