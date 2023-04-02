
execute if score @s fartcraft.snowball matches 1.. run scoreboard players operation #uuid.0 player_action.data = @s player_action.uuid.0
execute if score @s fartcraft.snowball matches 1.. run scoreboard players operation #uuid.1 player_action.data = @s player_action.uuid.1
execute if score @s fartcraft.snowball matches 1.. run scoreboard players operation #uuid.2 player_action.data = @s player_action.uuid.2
execute if score @s fartcraft.snowball matches 1.. run scoreboard players operation #uuid.3 player_action.data = @s player_action.uuid.3

execute store success score #success fartcraft.data run damage @e[nbt={HurtTime:10s},distance=..3,sort=nearest,limit=1] 3 fartcraft:turd by @p[predicate=player_action:v1.1/equals_uuid]
execute if score #success fartcraft.data matches 0 positioned ~-0.5 ~-2 ~-0.5 run damage @p[dx=0,dz=0,dy=2] 3 fartcraft:turd by @p[predicate=player_action:v1.1/equals_uuid]
