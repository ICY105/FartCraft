
scoreboard players operation #in.0 fartcraft.data = @s player_action.uuid.0
scoreboard players operation #in.1 fartcraft.data = @s player_action.uuid.1
scoreboard players operation #in.2 fartcraft.data = @s player_action.uuid.2
scoreboard players operation #in.3 fartcraft.data = @s player_action.uuid.3
execute as @e[type=snowball,tag=!fartcraft.checked] run function fartcraft:entities/init_snowball
scoreboard players set @s fartcraft.snowball 0
