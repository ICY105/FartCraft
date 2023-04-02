
scoreboard players add @s fartcraft.food 0
scoreboard players add @s fartcraft.last_defication 0

# process food
execute if score @s fartcraft.last_defication > @s fartcraft.food run scoreboard players operation @s fartcraft.last_defication = @s fartcraft.food
execute if score @s fartcraft.last_defication < @s fartcraft.food if score @s fartcraft.last_defication matches ..7200 run scoreboard players add @s fartcraft.last_defication 1
execute if score @s fartcraft.last_defication matches 7500.. run function fartcraft:entities/player/failed_to_deficate_death

# process sneaking
execute if score @s fartcraft.sneaking matches 1.. unless predicate fartcraft:sneaking run scoreboard players set @s fartcraft.sneaking 0
execute if predicate fartcraft:sneaking run scoreboard players add @s fartcraft.sneaking 1

execute if score @s fartcraft.last_defication matches 400.. if score @s fartcraft.sneaking matches 8 run function fartcraft:entities/fart/fart
execute if score @s fartcraft.last_defication matches 400.. if score @s fartcraft.sneaking matches 8 run scoreboard players remove @s fartcraft.food 100
execute if score @s fartcraft.last_defication matches 400.. if score @s fartcraft.sneaking matches 8 run scoreboard players remove @s fartcraft.last_defication 25

execute if score @s fartcraft.last_defication matches 2880.. if score @s fartcraft.sneaking matches 20 run playsound fartcraft:deficate player @a
execute if score @s fartcraft.last_defication matches 2880.. if score @s fartcraft.sneaking matches 40 run function fartcraft:entities/feces/deficate
execute if score @s fartcraft.last_defication matches 2880.. if score @s fartcraft.sneaking matches 40 run scoreboard players operation @s fartcraft.food -= @s fartcraft.last_defication
execute if score @s fartcraft.last_defication matches 2880.. if score @s fartcraft.sneaking matches 40 run scoreboard players set @s fartcraft.last_defication 0

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

# throw snowball
execute if score @s fartcraft.snowball matches 1.. run scoreboard players operation #in.0 fartcraft.data = @s player_action.uuid.0
execute if score @s fartcraft.snowball matches 1.. run scoreboard players operation #in.1 fartcraft.data = @s player_action.uuid.1
execute if score @s fartcraft.snowball matches 1.. run scoreboard players operation #in.2 fartcraft.data = @s player_action.uuid.2
execute if score @s fartcraft.snowball matches 1.. run scoreboard players operation #in.3 fartcraft.data = @s player_action.uuid.3
execute if score @s fartcraft.snowball matches 1.. as @e[type=snowball,tag=!fartcraft.checked] run function fartcraft:entities/init_snowball
execute if score @s fartcraft.snowball matches 1.. run scoreboard players set @s fartcraft.snowball 0
