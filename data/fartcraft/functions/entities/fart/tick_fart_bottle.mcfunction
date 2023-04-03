
scoreboard players set #success fartcraft.data 0
execute on vehicle run scoreboard players set #success fartcraft.data 1

execute if score #success fartcraft.data matches 0 run summon area_effect_cloud ~ ~-0.5 ~ {Particle:"entity_effect",ReapplicationDelay:60,Radius:3f,RadiusPerTick:-0.005f,RadiusOnUse:0f,Duration:600,DurationOnUse:0,Color:3095809,Effects:[{Id:2,Amplifier:0b,Duration:100},{Id:4,Amplifier:0b,Duration:100},{Id:9,Amplifier:0b,Duration:100},{Id:18,Amplifier:0b,Duration:100}]}
execute if score #success fartcraft.data matches 0 run playsound fartcraft:fart player @a
execute if score #success fartcraft.data matches 0 run kill @s
