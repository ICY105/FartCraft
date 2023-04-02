
execute if data entity @s Item.tag.fartcraft{id:"fart_in_a_bottle"} run function fartcraft:entities/fart/init_fart_bottle
execute if data entity @s Item.tag.fartcraft{id:"turd"} run function fartcraft:entities/feces/init_thrown_turd
execute if data entity @s Item.tag.fartcraft{id:"golden_turd"} run function fartcraft:entities/feces/init_thrown_turd

scoreboard players operation @s player_action.uuid.0 = #in.0 fartcraft.data
scoreboard players operation @s player_action.uuid.1 = #in.1 fartcraft.data
scoreboard players operation @s player_action.uuid.2 = #in.2 fartcraft.data
scoreboard players operation @s player_action.uuid.3 = #in.3 fartcraft.data


