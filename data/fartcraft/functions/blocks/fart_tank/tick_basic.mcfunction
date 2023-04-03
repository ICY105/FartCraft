
execute unless block ~ ~ ~ minecraft:glass run function fartcraft:blocks/fart_tank/break

scoreboard players set #energy fartcraft.data -1
execute on passengers if entity @s[tag=fartcraft.fart_tank.model] run scoreboard players operation #energy fartcraft.data = @s energy.storage

execute if score #energy fartcraft.data matches 1..8 run particle minecraft:dust 0.5 0.25 0 0.25 ~ ~0.5 ~ 0.2 0.2 0.2 0.01 1
execute if score #energy fartcraft.data matches 9..16 run particle minecraft:dust 0.5 0.25 0 0.5 ~ ~0.5 ~ 0.2 0.2 0.2 0.01 1
execute if score #energy fartcraft.data matches 17..24 run particle minecraft:dust 0.5 0.25 0 0.75 ~ ~0.5 ~ 0.2 0.2 0.2 0.01 1
execute if score #energy fartcraft.data matches 25.. run particle minecraft:dust 0.5 0.25 0 1 ~ ~0.5 ~ 0.2 0.2 0.2 0.01 1
execute if score #energy fartcraft.data matches 33..40 run particle minecraft:dust 0.5 0.75 0 0.25 ~ ~0.5 ~ 0.2 0.2 0.2 0.01 1
execute if score #energy fartcraft.data matches 41..48 run particle minecraft:dust 0.5 0.75 0 0.5 ~ ~0.5 ~ 0.2 0.2 0.2 0.01 1
execute if score #energy fartcraft.data matches 49..56 run particle minecraft:dust 0.5 0.75 0 0.75 ~ ~0.5 ~ 0.2 0.2 0.2 0.01 1
execute if score #energy fartcraft.data matches 57.. run particle minecraft:dust 0.5 0.75 0 1 ~ ~0.5 ~ 0.2 0.2 0.2 0.01 1
