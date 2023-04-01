
damage @s 100000 fartcraft:bathroom
playsound minecraft:entity.generic.explode player @a
execute if entity @s[tag=!fartcraft.golden_meal] run particle minecraft:dust 0.5 0.25 0 4 ~ ~1 ~ 0.25 0.5 0.25 1 50
execute if entity @s[tag=fartcraft.golden_meal] run particle minecraft:dust 1 0.75 0 4 ~ ~1 ~ 0.25 0.5 0.25 1 50

tag @s remove fartcraft.golden_meal
scoreboard players set @s fartcraft.food 0
scoreboard players set @s fartcraft.last_defication 0
