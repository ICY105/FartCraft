
execute unless block ~ ~ ~ minecraft:stone_slab run function fartcraft:blocks/turd_polisher/break

scoreboard players set #energy fartcraft.data -1
execute on passengers if entity @s[tag=fartcraft.turd_polisher.model] run scoreboard players operation #energy fartcraft.data = @s energy.storage

execute if score #energy fartcraft.data matches 1.. align xyz run particle minecraft:dust 0.5 0.25 0 0.5 ~ ~0.55 ~ 0 0 0 0 1
execute if score #energy fartcraft.data matches 2.. align xyz run particle minecraft:dust 0.5 0.25 0 0.5 ~1 ~0.55 ~ 0 0 0 0 1
execute if score #energy fartcraft.data matches 3.. align xyz run particle minecraft:dust 0.5 0.25 0 0.5 ~1 ~0.55 ~1 0 0 0 0 1
execute if score #energy fartcraft.data matches 4.. align xyz run particle minecraft:dust 0.5 0.25 0 0.5 ~ ~0.55 ~1 0 0 0 0 1

scoreboard players set #state fartcraft.data 0
execute on passengers if entity @s[tag=fartcraft.turd_polisher.item_holder] if data entity @s item.tag.fartcraft{id:"turd"} run scoreboard players set #state fartcraft.data 1
execute on passengers if entity @s[tag=fartcraft.turd_polisher.item_holder] if data entity @s item.tag.fartcraft{id:"golden_turd"} run scoreboard players set #state fartcraft.data 2

execute if score #state fartcraft.data matches 0 run scoreboard players set @s fartcraft.data 0
execute if score #state fartcraft.data matches 1..2 if score #energy fartcraft.data matches 4.. run scoreboard players add @s fartcraft.data 1
execute if score @s fartcraft.data matches 1.. align xyz run particle minecraft:dust 0.25 0.5 0 1 ~0.5 ~0.65 ~0.5 0.1 0.1 0.1 0 1
execute if score @s fartcraft.data matches 100.. run function fartcraft:blocks/turd_polisher/finish_recipe
