
execute if score @s fartcraft.last_fart matches 0 run function fartcraft:entities/fart/fart
execute unless score @s fartcraft.last_fart matches 1.. run function fartcraft:entities/fart/process_farting_2
scoreboard players remove @s fartcraft.last_fart 1
