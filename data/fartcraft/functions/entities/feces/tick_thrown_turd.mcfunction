
scoreboard players set #success fartcraft.data 0
execute on vehicle run scoreboard players set #success fartcraft.data 1

execute if score #success fartcraft.data matches 0 run function fartcraft:entities/feces/thrown_turd_damage
execute if score #success fartcraft.data matches 0 run kill @s
