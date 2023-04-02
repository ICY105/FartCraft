
setblock ~ ~ ~ minecraft:stone_slab
summon interaction ~ ~-0.499 ~ {Tags:["fartcraft", "fartcraft.ticking", "fartcraft.turd_polisher"], width:1.01f, height:1.01f, Passengers:[{id:"minecraft:item_display", Tags:["fartcraft", "fartcraft.turd_polisher.model", "fartcraft.new", "energy.receive"],item:{id:"minecraft:furnace", Count:1b, tag:{CustomModelData:6420502}}},{id:"minecraft:item_display", Tags:["fartcraft", "fartcraft.turd_polisher.item_holder"], item:{}}]}

scoreboard players set @e[type=item_display,tag=fartcraft.new,distance=..1] energy.storage 0
scoreboard players set @e[type=item_display,tag=fartcraft.new,distance=..1] energy.max_storage 4
scoreboard players set @e[type=item_display,tag=fartcraft.new,distance=..1] energy.transfer_rate 256
execute as @e[type=item_display,tag=fartcraft.new,distance=..1] run function energy:v1/api/init_machine

execute as @e[type=item_display,tag=fartcraft.new,distance=..1] run data modify entity @s transformation.scale set value [1.01f, 1.01f, 1.01f]
execute as @e[type=item_display,tag=fartcraft.new,distance=..1] run data modify entity @s transformation.translation set value [0f, 0.5f, 0f]

tag @e[type=item_display,tag=fartcraft.new,distance=..1] remove fartcraft.new

execute as @e[type=item_display,tag=fartcraft.turd_polisher.item_holder,distance=..1] run data modify entity @s transformation.translation set value [0f, 1.0f, 0f]
