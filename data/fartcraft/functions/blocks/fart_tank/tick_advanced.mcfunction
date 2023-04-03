
execute unless block ~ ~ ~ minecraft:glass run function fartcraft:blocks/fart_tank/break

scoreboard players set #energy fartcraft.data -1
execute on passengers if entity @s[tag=fartcraft.fart_tank.model] run scoreboard players operation #energy fartcraft.data = @s energy.storage

execute if score #energy fartcraft.data matches 1..32 run particle minecraft:dust 0.5 0.25 0 0.25 ~ ~0.5 ~ 0.2 0.2 0.2 0.01 1
execute if score #energy fartcraft.data matches 33..64 run particle minecraft:dust 0.5 0.25 0 0.5 ~ ~0.5 ~ 0.2 0.2 0.2 0.01 1
execute if score #energy fartcraft.data matches 65..96 run particle minecraft:dust 0.5 0.25 0 0.75 ~ ~0.5 ~ 0.2 0.2 0.2 0.01 1
execute if score #energy fartcraft.data matches 97.. run particle minecraft:dust 0.5 0.25 0 1 ~ ~0.5 ~ 0.2 0.2 0.2 0.01 1
execute if score #energy fartcraft.data matches 129..160 run particle minecraft:dust 0.5 0.75 0 0.25 ~ ~0.5 ~ 0.2 0.2 0.2 0.01 1
execute if score #energy fartcraft.data matches 161..192 run particle minecraft:dust 0.5 0.75 0 0.5 ~ ~0.5 ~ 0.2 0.2 0.2 0.01 1
execute if score #energy fartcraft.data matches 193..224 run particle minecraft:dust 0.5 0.75 0 0.75 ~ ~0.5 ~ 0.2 0.2 0.2 0.01 1
execute if score #energy fartcraft.data matches 225.. run particle minecraft:dust 0.5 0.75 0 1 ~ ~0.5 ~ 0.2 0.2 0.2 0.01 1
