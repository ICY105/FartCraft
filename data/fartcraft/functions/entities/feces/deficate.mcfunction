
playsound fartcraft:deficate player @a
tag @s remove fartcraft.golden_meal
execute if entity @s[type=#fartcraft:large_mob] positioned ~ ~0.75 ~ run function fartcraft:entities/feces/summon_turd
execute if entity @s[type=#fartcraft:small_mob] positioned ~ ~0.25 ~ run function fartcraft:entities/feces/summon_turd