
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
execute if score @s fartcraft.last_defication matches 1440.. run function fartcraft:entities/player/defication_meter

# throw snowball
execute if score @s fartcraft.snowball matches 1.. run function fartcraft:entities/player/throw_snowball

# use coas
execute if score @s fartcraft.coas matches 1.. run function fartcraft:entities/player/use_coas
