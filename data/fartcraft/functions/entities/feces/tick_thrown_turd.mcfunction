
scoreboard players set #success fartcraft.data 0
execute on vehicle run scoreboard players set #success fartcraft.data 1

execute if score #success fartcraft.data matches 0 run damage @e[nbt={HurtTime:10s},distance=..3,sort=nearest,limit=1] 3 fartcraft:turd by @p
execute if score #success fartcraft.data matches 0 run kill @s
