
# Pooper Scooper
execute if score @s smithed.data matches 0 store result score @s smithed.data if data storage smithed.crafter:input recipe{0:[{id:"minecraft:brick", Slot:0b},{id:"minecraft:air", Slot:1b},{id:"minecraft:air", Slot:2b}],1:[{id:"minecraft:stick", Slot:0b},{id:"minecraft:air", Slot:1b},{id:"minecraft:air", Slot:2b}],2:[{id:"minecraft:stick", Slot:0b},{id:"minecraft:air", Slot:1b},{id:"minecraft:air", Slot:2b}]} run loot replace block ~ ~ ~ container.16 loot fartcraft:pooper_scooper

# Poopy Armor
execute if score @s smithed.data matches 0 store result score @s smithed.data if data storage smithed.crafter:input recipe{0:[{tag:{fartcraft:{id:"turd"}}, Slot:0b},{tag:{fartcraft:{id:"turd"}}, Slot:1b},{tag:{fartcraft:{id:"turd"}}, Slot:2b}],1:[{tag:{fartcraft:{id:"turd"}}, Slot:0b},{id:"minecraft:air", Slot:1b},{tag:{fartcraft:{id:"turd"}}, Slot:2b}],2:[]} run loot replace block ~ ~ ~ container.16 loot fartcraft:poopy_helmet
execute if score @s smithed.data matches 0 store result score @s smithed.data if data storage smithed.crafter:input recipe{0:[{tag:{fartcraft:{id:"turd"}}, Slot:0b},{id:"minecraft:air", Slot:1b},{tag:{fartcraft:{id:"turd"}}, Slot:2b}],1:[{tag:{fartcraft:{id:"turd"}}, Slot:0b},{tag:{fartcraft:{id:"turd"}}, Slot:1b},{tag:{fartcraft:{id:"turd"}}, Slot:2b}],2:[{tag:{fartcraft:{id:"turd"}}, Slot:0b},{tag:{fartcraft:{id:"turd"}}, Slot:1b},{tag:{fartcraft:{id:"turd"}}, Slot:2b}]} run loot replace block ~ ~ ~ container.16 loot fartcraft:poopy_chestplate
execute if score @s smithed.data matches 0 store result score @s smithed.data if data storage smithed.crafter:input recipe{0:[{tag:{fartcraft:{id:"turd"}}, Slot:0b},{tag:{fartcraft:{id:"turd"}}, Slot:1b},{tag:{fartcraft:{id:"turd"}}, Slot:2b}],1:[{tag:{fartcraft:{id:"turd"}}, Slot:0b},{id:"minecraft:air", Slot:1b},{tag:{fartcraft:{id:"turd"}}, Slot:2b}],2:[{tag:{fartcraft:{id:"turd"}}, Slot:0b},{id:"minecraft:air", Slot:1b},{tag:{fartcraft:{id:"turd"}}, Slot:2b}]} run loot replace block ~ ~ ~ container.16 loot fartcraft:poopy_leggings
execute if score @s smithed.data matches 0 store result score @s smithed.data if data storage smithed.crafter:input recipe{0:[{tag:{fartcraft:{id:"turd"}}, Slot:0b},{id:"minecraft:air", Slot:1b},{tag:{fartcraft:{id:"turd"}}, Slot:2b}],1:[{tag:{fartcraft:{id:"turd"}}, Slot:0b},{id:"minecraft:air", Slot:1b},{tag:{fartcraft:{id:"turd"}}, Slot:2b}],2:[]} run loot replace block ~ ~ ~ container.16 loot fartcraft:poopy_boots
