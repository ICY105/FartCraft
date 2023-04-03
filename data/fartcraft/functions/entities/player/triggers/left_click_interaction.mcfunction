
advancement revoke @s only fartcraft:triggers/left_click_interaction

tag @s add fartcraft.interact
execute as @e[type=interaction,tag=fartcraft,distance=..10] if data entity @s attack.player at @s run function fartcraft:blocks/left_click_interaction
tag @s remove fartcraft.interact
