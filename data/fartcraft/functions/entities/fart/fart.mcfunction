
playsound fartcraft:fart player @a
execute if entity @s[type=#fartcraft:large_mob] positioned ~ ~0.75 ~ run function fartcraft:entities/fart/fart_2
execute if entity @s[type=#fartcraft:small_mob] positioned ~ ~0.25 ~ run function fartcraft:entities/fart/fart_2

scoreboard players set #success fartcraft.data 0
execute as @a[distance=..8] at @s run function fartcraft:entities/fart/fill_bottle
execute if score #success fartcraft.data matches 0 run scoreboard players add @e[tag=fartcraft.fart_collector,scores={energy.storage=..8},distance=..8,sort=nearest,limit=1] energy.storage 1

scoreboard players set #distance fartcraft.data 10
execute if entity @s[type=#fartcraft:should_leap] rotated ~ -30 run function fartcraft:utils/leap
