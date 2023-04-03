
execute store success score #success fartcraft.data run clear @s snowball{fartcraft:{id:"fart_in_a_bottle"}} 1
execute if score #success fartcraft.data matches 1 run give @s glass_bottle
execute if score #success fartcraft.data matches 1 anchored eyes positioned ^ ^ ^0.5 summon marker run function fartcraft:items/fart_gun/use_2
execute if score #success fartcraft.data matches 0 if entity @s[gamemode=creative] anchored eyes positioned ^ ^ ^0.5 summon marker run function fartcraft:items/fart_gun/use_2
