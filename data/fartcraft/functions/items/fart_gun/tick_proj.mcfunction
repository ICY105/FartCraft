
particle minecraft:dust 0.5 0.5 0.1 2 ~ ~ ~ 0.1 0.1 0.1 0 1

scoreboard players operation #uuid.0 player_action.data = @s player_action.uuid.0
scoreboard players operation #uuid.1 player_action.data = @s player_action.uuid.1
scoreboard players operation #uuid.2 player_action.data = @s player_action.uuid.2
scoreboard players operation #uuid.3 player_action.data = @s player_action.uuid.3
execute positioned ~ ~-1.5 ~ as @e[dx=0,dy=2,dz=0,predicate=!player_action:v1.1/equals_uuid] run function fartcraft:items/fart_gun/proj_damage

scoreboard players add @s fartcraft.data 1
execute unless block ~ ~ ~ #fartcraft:raytrace_through run scoreboard players set @s fartcraft.data 100
execute if score @s fartcraft.data matches ..99 run tp @s ^ ^ ^0.5
execute if score @s fartcraft.data matches 100.. run kill @s
