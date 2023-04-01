
## #rng.in: max output value (0-100,000,000)
#> #rng.out: generated random number

# LCG
scoreboard players operation #rng.seed fartcraft.data *= #cons.rng_a fartcraft.data
scoreboard players add #rng.seed fartcraft.data 12345

# output
scoreboard players operation #rng.out fartcraft.data = #rng.seed fartcraft.data
scoreboard players operation #rng.out fartcraft.data /= #cons.16 fartcraft.data
scoreboard players operation #rng.out fartcraft.data %= #rng.in fartcraft.data
execute if score #rng.out fartcraft.data matches ..-1 run scoreboard players operation #rng.out fartcraft.data *= #cons.-1 fartcraft.data

# check for 0 range
execute if score #rng.in fartcraft.data matches 0 run scoreboard players set #rng.out fartcraft.data 0
