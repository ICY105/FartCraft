
schedule function fartcraft:tick 1t replace

scoreboard objectives add fartcraft.data dummy
scoreboard objectives add fartcraft.food dummy
scoreboard objectives add fartcraft.last_fart dummy
scoreboard objectives add fartcraft.last_defication dummy

scoreboard players add #cons.seed fartcraft.data 0
scoreboard players set #cons.-1 fartcraft.data -1
scoreboard players set #cons.rng_a fartcraft.data 1103515245
