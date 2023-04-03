
execute unless block ~ ~ ~ minecraft:stone_slab run function fartcraft:blocks/fart_disperser/break

scoreboard players set #energy fartcraft.data -1
execute on passengers if entity @s[tag=fartcraft.fart_disperser.model] run scoreboard players operation #energy fartcraft.data = @s energy.storage

execute unless score @s fartcraft.data matches 1.. if score #energy fartcraft.data matches 1.. on passengers if entity @s[tag=fartcraft.fart_disperser.model] run scoreboard players remove @s energy.storage 1
execute unless score @s fartcraft.data matches 1.. if score #energy fartcraft.data matches 1.. run scoreboard players set @s fartcraft.data 200

scoreboard players set #loop fartcraft.data 12
execute if score @s fartcraft.data matches 1.. if entity @s[tag=fartcraft.enabled] run particle dust 0.5 0.25 0 1 ~ ~0.6 ~ 0.5 0 0.5 0 3

execute if score #timer.20 fartcraft.data matches 2 run function fartcraft:blocks/fart_disperser/slow_tick
