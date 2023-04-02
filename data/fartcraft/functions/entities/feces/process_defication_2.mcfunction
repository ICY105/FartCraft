
scoreboard players set #delay fartcraft.data 0

scoreboard players set #rng.in fartcraft.data 60
function fartcraft:utils/random
scoreboard players operation #delay fartcraft.data += #rng.out fartcraft.data

scoreboard players set #rng.in fartcraft.data 60
function fartcraft:utils/random
scoreboard players operation #delay fartcraft.data += #rng.out fartcraft.data

scoreboard players set #rng.in fartcraft.data 60
function fartcraft:utils/random
scoreboard players operation #delay fartcraft.data += #rng.out fartcraft.data

scoreboard players operation @s fartcraft.last_defication = #delay fartcraft.data

