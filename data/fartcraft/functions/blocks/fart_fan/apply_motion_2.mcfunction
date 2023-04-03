
execute if score #rot fartcraft.data matches 0..1 store result score #motion fartcraft.data run data get entity @s Motion[0] 100
execute if score #rot fartcraft.data matches 2..3 store result score #motion fartcraft.data run data get entity @s Motion[2] 100

execute if score #rot fartcraft.data matches 1 if score #motion fartcraft.data matches ..180 run scoreboard players add #motion fartcraft.data 20
execute if score #rot fartcraft.data matches 3 if score #motion fartcraft.data matches ..180 run scoreboard players add #motion fartcraft.data 20

execute if score #rot fartcraft.data matches 0 if score #motion fartcraft.data matches ..180 run scoreboard players remove #motion fartcraft.data 20
execute if score #rot fartcraft.data matches 2 if score #motion fartcraft.data matches ..180 run scoreboard players remove #motion fartcraft.data 20

execute if score #rot fartcraft.data matches 0..1 store result entity @s Motion[0] double 0.01 run scoreboard players get #motion fartcraft.data
execute if score #rot fartcraft.data matches 2..3 store result entity @s Motion[2] double 0.01 run scoreboard players get #motion fartcraft.data


