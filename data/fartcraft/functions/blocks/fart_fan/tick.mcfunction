
execute unless block ~ ~ ~ minecraft:barrier run function fartcraft:blocks/fart_fan/break

scoreboard players set #energy fartcraft.data -1
execute on passengers if entity @s[tag=fartcraft.fart_fan.model] run scoreboard players operation #energy fartcraft.data = @s energy.storage

execute unless score @s fartcraft.data matches 1.. if score #energy fartcraft.data matches 1.. on passengers if entity @s[tag=fartcraft.fart_fan.model] run scoreboard players remove @s energy.storage 1
execute unless score @s fartcraft.data matches 1.. if score #energy fartcraft.data matches 1.. run scoreboard players set @s fartcraft.data 200

scoreboard players set #loop fartcraft.data 12
execute if score @s fartcraft.data matches 1.. if entity @s[tag=fartcraft.enabled,tag=fartcraft.rot.px] run scoreboard players set #rot fartcraft.data 0
execute if score @s fartcraft.data matches 1.. if entity @s[tag=fartcraft.enabled,tag=fartcraft.rot.nx] run scoreboard players set #rot fartcraft.data 1
execute if score @s fartcraft.data matches 1.. if entity @s[tag=fartcraft.enabled,tag=fartcraft.rot.pz] run scoreboard players set #rot fartcraft.data 2
execute if score @s fartcraft.data matches 1.. if entity @s[tag=fartcraft.enabled,tag=fartcraft.rot.nz] run scoreboard players set #rot fartcraft.data 3
execute if score @s fartcraft.data matches 1.. if entity @s[tag=fartcraft.enabled] positioned ^ ^ ^1 run function fartcraft:blocks/fart_fan/apply_motion
execute if score @s fartcraft.data matches 1.. if entity @s[tag=fartcraft.enabled] run scoreboard players remove @s fartcraft.data 1

execute if score #timer.20 fartcraft.data matches 1 run function fartcraft:blocks/fart_fan/slow_tick
