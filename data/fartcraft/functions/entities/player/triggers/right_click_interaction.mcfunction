
advancement revoke @s only fartcraft:right_click_interaction

tag @s add fartcraft.interact
execute as @e[type=interaction,tag=fartcraft,distance=..10] if data entity @s interaction.player at @s run function fartcraft:blocks/right_click_interaction
tag @s remove fartcraft.interact
