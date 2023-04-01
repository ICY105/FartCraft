
data modify storage fartcraft:temp Pos1 set from entity @s Pos
tp @s ^ ^ ^1
data modify storage fartcraft:temp Pos2 set from entity @s Pos

execute store result score #x1 fartcraft.data run data get storage fartcraft:temp Pos1[0] 100
execute store result score #x2 fartcraft.data run data get storage fartcraft:temp Pos2[0] 100

execute store result score #y1 fartcraft.data run data get storage fartcraft:temp Pos1[1] 100
execute store result score #y2 fartcraft.data run data get storage fartcraft:temp Pos2[1] 100

execute store result score #z1 fartcraft.data run data get storage fartcraft:temp Pos1[2] 100
execute store result score #z2 fartcraft.data run data get storage fartcraft:temp Pos2[2] 100

scoreboard players operation #x2 fartcraft.data -= #x1 fartcraft.data
scoreboard players operation #y2 fartcraft.data -= #y1 fartcraft.data
scoreboard players operation #z2 fartcraft.data -= #z1 fartcraft.data

scoreboard players operation #x2 fartcraft.data *= #distance fartcraft.data
scoreboard players operation #y2 fartcraft.data *= #distance fartcraft.data
scoreboard players operation #z2 fartcraft.data *= #distance fartcraft.data

execute store result storage fartcraft:temp Pos1[0] double 0.001 run scoreboard players get #x2 fartcraft.data
execute store result storage fartcraft:temp Pos1[1] double 0.001 run scoreboard players get #y2 fartcraft.data
execute store result storage fartcraft:temp Pos1[2] double 0.001 run scoreboard players get #z2 fartcraft.data

tp @s ~ ~ ~
data modify entity @s Motion set from storage fartcraft:temp Pos1
