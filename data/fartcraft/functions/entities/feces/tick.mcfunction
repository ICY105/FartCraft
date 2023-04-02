
scoreboard players add @s fartcraft.data 1
execute if score @s fartcraft.data matches 3000.. if score #timer.20 fartcraft.data matches 0 run particle minecraft:dust 0.5 0.75 0 1 ~ ~0.3 ~ 0.1 0 0.1 0.1 1
execute if score @s fartcraft.data matches 6000.. run kill @s

execute if score #timer.20 fartcraft.data matches 10 run function fartcraft:entities/feces/tick_poison
