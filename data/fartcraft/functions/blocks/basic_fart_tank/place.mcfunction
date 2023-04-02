
setblock ~ ~ ~ minecraft:glass
summon interaction ~ ~-0.5 ~ {Tags:["fartcraft", "fartcraft.ticking", "fartcraft.basic_fart_tank", "fartcraft.new", "energy.send", "energy.receive"], width:1.01f, height:1.01f, Passengers:[{id:"minecraft:item_display", Tags:["fartcraft", "fartcraft.basic_fart_tank.model"],item:{id:"minecraft:furnace", Count:1b, tag:{CustomModelData:6420500}}}]}
scoreboard players set @e[type=interaction,tag=fartcraft.new,distance=..1] energy.storage 0
scoreboard players set @e[type=interaction,tag=fartcraft.new,distance=..1] energy.max_storage 64
execute as @e[type=interaction,tag=fartcraft.new,distance=..1] run function energy:v1/api/init_machine
tag @e[type=interaction,tag=fartcraft.new,distance=..1] remove fartcraft.new

execute as @e[type=item_display,tag=fartcraft.basic_fart_tank.model,distance=..1] run data modify entity @s transformation.scale set value [1.01f, 1.01f, 1.01f]
execute as @e[type=item_display,tag=fartcraft.basic_fart_tank.model,distance=..1] run data modify entity @s transformation.translation set value [0f, 0.5f, 0f]
