
execute as @e[tag=fartcraft.turd,distance=..0.25,limit=1] run function fartcraft:items/pooper_scooper/use_3

execute if score #loop fartcraft.data matches -10 run loot give @s loot fartcraft:turd
execute if score #loop fartcraft.data matches -11 run loot give @s loot fartcraft:golden_turd

scoreboard players remove #loop fartcraft.data 1
execute if score #loop fartcraft.data matches 1.. positioned ^ ^ ^0.1 if block ~ ~ ~ #fartcraft:raytrace_through run function fartcraft:items/pooper_scooper/use_2
