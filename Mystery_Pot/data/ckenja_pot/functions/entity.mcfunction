execute if entity @s[type=item] if data entity @s Item{id:"minecraft:dried_kelp"} align xyz if block ~ ~-1 ~ minecraft:cauldron[level=3] if block ~ ~-1 ~ minecraft:soul_campfire run function ckenja_pot:entity/start
execute if entity @s[type=armor_stand,tag=ckenja_pot_entity] run function ckenja_pot:entity/general
