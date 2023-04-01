
scoreboard players add @s fartcraft.food 0
scoreboard players add @s fartcraft.last_defication 0

# process food
execute if score @s fartcraft.last_defication < @s fartcraft.food if score @s fartcraft.last_defication matches ..7200 run scoreboard players add @s fartcraft.last_defication 1
execute if score @s fartcraft.last_defication matches 7200.. run scoreboard players add @s fartcraft.last_defication 1

execute if score @s fartcraft.last_defication matches 7500.. run damage @s 100000 fartcraft:bathroom
execute if score @s fartcraft.last_defication matches 7500.. run playsound minecraft:entity.generic.explode player @a
execute if score @s fartcraft.last_defication matches 7500.. run particle minecraft:dust 0.5 0.25 0 4 ~ ~1 ~ 0.25 0.5 0.25 1 50
execute if score @s fartcraft.last_defication matches 7500.. run scoreboard players set @s fartcraft.food 0
execute if score @s fartcraft.last_defication matches 7500.. run scoreboard players set @s fartcraft.last_defication 0

# display bathroom meter
execute if score @s fartcraft.last_defication matches 1440..1920 run title @s actionbar [{"text":"Bathroom Meter: ","color":"#663300"},{"text":"\u0005","font":"fartcraft:default","color":"white"}]
execute if score @s fartcraft.last_defication matches 1920..2400 run title @s actionbar [{"text":"Bathroom Meter: ","color":"#663300"},{"text":"\u0006","font":"fartcraft:default","color":"white"}]
execute if score @s fartcraft.last_defication matches 2400..2880 run title @s actionbar [{"text":"Bathroom Meter: ","color":"#663300"},{"text":"\u0007","font":"fartcraft:default","color":"white"}]
execute if score @s fartcraft.last_defication matches 2880..3360 run title @s actionbar [{"text":"Bathroom Meter: ","color":"#663300"},{"text":"\u0008","font":"fartcraft:default","color":"white"}]
execute if score @s fartcraft.last_defication matches 3360..3840 run title @s actionbar [{"text":"Bathroom Meter: ","color":"#663300"},{"text":"\u0009","font":"fartcraft:default","color":"white"}]
execute if score @s fartcraft.last_defication matches 3840..4320 run title @s actionbar [{"text":"Bathroom Meter: ","color":"#663300"},{"text":"\u0010","font":"fartcraft:default","color":"white"}]
execute if score @s fartcraft.last_defication matches 4320..4800 run title @s actionbar [{"text":"Bathroom Meter: ","color":"#663300"},{"text":"\u000a","font":"fartcraft:default","color":"white"}]
execute if score @s fartcraft.last_defication matches 4800..5280 run title @s actionbar [{"text":"Bathroom Meter: ","color":"#663300"},{"text":"\u000b","font":"fartcraft:default","color":"white"}]
execute if score @s fartcraft.last_defication matches 5280..5760 run title @s actionbar [{"text":"Bathroom Meter: ","color":"#663300"},{"text":"\u000c","font":"fartcraft:default","color":"white"}]
execute if score @s fartcraft.last_defication matches 5760..6240 run title @s actionbar [{"text":"Bathroom Meter: ","color":"#663300"},{"text":"\u000d","font":"fartcraft:default","color":"white"}]
execute if score @s fartcraft.last_defication matches 6240..6720 run title @s actionbar [{"text":"Bathroom Meter: ","color":"#663300"},{"text":"\u000e","font":"fartcraft:default","color":"white"}]
execute if score @s fartcraft.last_defication matches 6720..7200 run title @s actionbar [{"text":"Bathroom Meter: ","color":"#663300"},{"text":"\u000f","font":"fartcraft:default","color":"white"}]
execute if score @s fartcraft.last_defication matches 7200.. run title @s actionbar [{"text":"Warning, you need to go right now: ","color":"red"},{"text":"\u0010","font":"fartcraft:default","color":"white"}]
