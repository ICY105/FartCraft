
execute unless block ~ ~ ~ minecraft:glass run function fartcraft:blocks/basic_fart_tank/break

execute if score @s energy.storage matches 1..8 run particle minecraft:dust 0.5 0.25 0 0.25 ~ ~ ~ 0.2 0.2 0.2 0.01 1
execute if score @s energy.storage matches 9..16 run particle minecraft:dust 0.5 0.25 0 0.5 ~ ~ ~ 0.2 0.2 0.2 0.01 1
execute if score @s energy.storage matches 17..24 run particle minecraft:dust 0.5 0.25 0 0.75 ~ ~ ~ 0.2 0.2 0.2 0.01 1
execute if score @s energy.storage matches 25.. run particle minecraft:dust 0.5 0.25 0 1 ~ ~ ~ 0.2 0.2 0.2 0.01 1
execute if score @s energy.storage matches 33..40 run particle minecraft:dust 0.5 0.75 0 0.25 ~ ~ ~ 0.2 0.2 0.2 0.01 1
execute if score @s energy.storage matches 41..48 run particle minecraft:dust 0.5 0.75 0 0.5 ~ ~ ~ 0.2 0.2 0.2 0.01 1
execute if score @s energy.storage matches 49..56 run particle minecraft:dust 0.5 0.75 0 0.75 ~ ~ ~ 0.2 0.2 0.2 0.01 1
execute if score @s energy.storage matches 57.. run particle minecraft:dust 0.5 0.75 0 1 ~ ~ ~ 0.2 0.2 0.2 0.01 1
