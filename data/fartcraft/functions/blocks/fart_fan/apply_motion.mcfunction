
execute align xyz as @e[dx=0,dy=0,dz=0] if data entity @s Motion run function fartcraft:blocks/fart_fan/apply_motion_2
particle minecraft:dust 0.5 0.25 0 1 ~ ~0.5 ~ 0.2 0.2 0.2 0 1

scoreboard players remove #loop fartcraft.data 1
execute if score #loop fartcraft.data matches 1.. positioned ^ ^ ^1 if block ~ ~ ~ #fartcraft:raytrace_through run function fartcraft:blocks/fart_fan/apply_motion
