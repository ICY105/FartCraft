
execute if block ~ ~ ~ minecraft:furnace[facing=north] run summon interaction ~ ~-0.499 ~ {Tags:["fartcraft", "fartcraft.ticking", "fartcraft.fart_fan", "fartcraft.rot.pz"], width:1.01f, height:1.01f, Passengers:[{id:"minecraft:item_display", Rotation:[0.0f, 0.0f], Tags:["fartcraft", "fartcraft.fart_fan.model", "fartcraft.new", "energy.receive"], item:{id:"minecraft:furnace", Count:1b, tag:{CustomModelData:6420505}}}]}
execute if block ~ ~ ~ minecraft:furnace[facing=east] run summon interaction ~ ~-0.499 ~ {Tags:["fartcraft", "fartcraft.ticking", "fartcraft.fart_fan", "fartcraft.rot.nx"], width:1.01f, height:1.01f, Passengers:[{id:"minecraft:item_display", Rotation:[90.0f, 0.0f], Tags:["fartcraft", "fartcraft.fart_fan.model", "fartcraft.new", "energy.receive"], item:{id:"minecraft:furnace", Count:1b, tag:{CustomModelData:6420505}}}]}
execute if block ~ ~ ~ minecraft:furnace[facing=south] run summon interaction ~ ~-0.499 ~ {Tags:["fartcraft", "fartcraft.ticking", "fartcraft.fart_fan", "fartcraft.rot.nz"], width:1.01f, height:1.01f, Passengers:[{id:"minecraft:item_display", Rotation:[180.0f, 0.0f], Tags:["fartcraft", "fartcraft.fart_fan.model", "fartcraft.new", "energy.receive"], item:{id:"minecraft:furnace", Count:1b, tag:{CustomModelData:6420505}}}]}
execute if block ~ ~ ~ minecraft:furnace[facing=west] run summon interaction ~ ~-0.499 ~ {Tags:["fartcraft", "fartcraft.ticking", "fartcraft.fart_fan", "fartcraft.rot.px"], width:1.01f, height:1.01f, Passengers:[{id:"minecraft:item_display", Rotation:[270.0f, 0.0f], Tags:["fartcraft", "fartcraft.fart_fan.model", "fartcraft.new", "energy.receive"], item:{id:"minecraft:furnace", Count:1b, tag:{CustomModelData:6420505}}}]}

setblock ~ ~ ~ minecraft:barrier

scoreboard players set @e[type=item_display,tag=fartcraft.new,distance=..1] energy.storage 0
scoreboard players set @e[type=item_display,tag=fartcraft.new,distance=..1] energy.max_storage 4
scoreboard players set @e[type=item_display,tag=fartcraft.new,distance=..1] energy.transfer_rate 256
execute as @e[type=item_display,tag=fartcraft.new,distance=..1] run function energy:v1/api/init_machine

execute as @e[type=item_display,tag=fartcraft.new,distance=..1] run data modify entity @s transformation.scale set value [1.01f, 1.01f, 1.01f]
execute as @e[type=item_display,tag=fartcraft.new,distance=..1] run data modify entity @s transformation.translation set value [0f, 0.5f, 0f]

tag @e[type=item_display,tag=fartcraft.new,distance=..1] remove fartcraft.new

execute as @e[type=item_display,tag=fartcraft.turd_polisher.item_holder,distance=..1] run data modify entity @s transformation.translation set value [0f, 1.0f, 0f]
