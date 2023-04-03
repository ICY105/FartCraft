
tag @s remove fartcraft.enabled
function block_utils:v1/api/is_active
execute if score #out block_utils.data matches 0 run tag @s add fartcraft.enabled

