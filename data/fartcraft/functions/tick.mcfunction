
schedule function fartcraft:tick 1t replace

# Timers
scoreboard players add #timer.20 fartcraft.data 1
execute if score #timer.20 fartcraft.data matches 20.. run scoreboard players set #timer.20 fartcraft.data 0

scoreboard players add #timer.200 fartcraft.data 1
execute if score #timer.200 fartcraft.data matches 200.. run scoreboard players set #timer.200 fartcraft.data 0

# Entity Processing
execute as @a at @s run function fartcraft:entities/player/tick

execute as @e[tag=fartcraft.ticking] at @s run function #fartcraft:ticking
execute if score #timer.20 fartcraft.data matches 0 as @e[type=#fartcraft:can_fart] at @s run function fartcraft:entities/fart/process_farting
execute if score #timer.200 fartcraft.data matches 0 as @e[type=#fartcraft:can_deficate] at @s run function fartcraft:entities/feces/process_defication
