
scoreboard players operation #in.0 fartcraft.data = @s player_action.uuid.0
scoreboard players operation #in.1 fartcraft.data = @s player_action.uuid.1
scoreboard players operation #in.2 fartcraft.data = @s player_action.uuid.2
scoreboard players operation #in.3 fartcraft.data = @s player_action.uuid.3

execute if data entity @s SelectedItem.tag.fartcraft{id:"fart_gun"} run function fartcraft:items/fart_gun/use

scoreboard players set @s fartcraft.coas 0

