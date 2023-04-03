
schedule function fartcraft:tick 1t replace

scoreboard objectives add fartcraft.data dummy
scoreboard objectives add fartcraft.food dummy
scoreboard objectives add fartcraft.sneaking dummy
scoreboard objectives add fartcraft.last_fart dummy
scoreboard objectives add fartcraft.last_defication dummy

scoreboard objectives add fartcraft.snowball minecraft.used:minecraft.snowball
scoreboard objectives add fartcraft.coas minecraft.used:minecraft.carrot_on_a_stick

scoreboard players add #cons.seed fartcraft.data 0
scoreboard players set #cons.-1 fartcraft.data -1
scoreboard players set #cons.100 fartcraft.data 100
scoreboard players set #cons.rng_a fartcraft.data 1103515245
