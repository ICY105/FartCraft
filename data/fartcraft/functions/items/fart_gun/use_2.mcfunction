
tp @s ~ ~ ~ ~ ~
playsound fartcraft:fart player @a

tag @s add fartcraft
tag @s add fartcraft.ticking
tag @s add fartcraft.fart_gun.proj

scoreboard players operation @s player_action.uuid.0 = #in.0 fartcraft.data
scoreboard players operation @s player_action.uuid.1 = #in.1 fartcraft.data
scoreboard players operation @s player_action.uuid.2 = #in.2 fartcraft.data
scoreboard players operation @s player_action.uuid.3 = #in.3 fartcraft.data
