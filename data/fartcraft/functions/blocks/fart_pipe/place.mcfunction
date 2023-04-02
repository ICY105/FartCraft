
summon interaction ~ ~-0.499 ~ {Tags:["fartcraft", "fartcraft.fart_pipe"], width:1.01f, height:1.01f, Passengers:[{id:"minecraft:item_display", Tags:["fartcraft", "fartcraft.fart_pipe.model", "fartcraft.new", "energy.cable"],item:{id:"minecraft:copper_block", Count:1b, tag:{CustomModelData:6420500}}}]}

scoreboard players set @e[type=item_display,tag=fartcraft.new,distance=..1] energy.transfer_rate 256
execute as @e[type=item_display,tag=fartcraft.new,distance=..1] run function energy:v1/api/init_cable

execute as @e[type=item_display,tag=fartcraft.new,distance=..1] run data modify entity @s transformation.scale set value [1.01f, 1.01f, 1.01f]
execute as @e[type=item_display,tag=fartcraft.new,distance=..1] run data modify entity @s transformation.translation set value [0f, 0.5f, 0f]

tag @e[type=item_display,tag=fartcraft.new,distance=..1] remove fartcraft.new
