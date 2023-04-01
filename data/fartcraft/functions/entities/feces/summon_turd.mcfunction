
execute if entity @s[tag=!fartcraft.golden_meal] run summon armor_stand ~ ~ ~ {Tags:["fartcraft.turd","fartcraft.ticking","fartcraft.new"],Silent:1b,Invulnerable:1b,Small:1b,Invisible:1b,NoBasePlate:1b,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:6420500}}]}
execute if entity @s[tag=fartcraft.golden_meal] run summon armor_stand ~ ~ ~ {Tags:["fartcraft.turd","fartcraft.turd.golden","fartcraft.ticking","fartcraft.new"],Silent:1b,Invulnerable:1b,Small:1b,Invisible:1b,NoBasePlate:1b,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:carrot_on_a_stick",Count:1b,tag:{CustomModelData:6420501}}]}

execute as @e[type=armor_stand,tag=fartcraft.new] positioned as @s run function fartcraft:entities/feces/summon_turd_2
