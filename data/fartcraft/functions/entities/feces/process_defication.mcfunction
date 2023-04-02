
execute if score @s fartcraft.last_defication matches 0 run function fartcraft:entities/feces/deficate
execute unless score @s fartcraft.last_defication matches 1.. run function fartcraft:entities/feces/process_defication_2
scoreboard players remove @s fartcraft.last_defication 1
