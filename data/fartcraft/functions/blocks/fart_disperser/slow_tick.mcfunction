
tag @s remove fartcraft.enabled
function block_utils:v1/api/is_active
execute if score #out block_utils.data matches 0 run tag @s add fartcraft.enabled

execute if score @s fartcraft.data matches 1.. if entity @s[tag=fartcraft.enabled] align xyz positioned ~-1 ~ ~-1 as @e[dx=2,dy=2,dz=2] run function fartcraft:blocks/fart_disperser/apply_fart
