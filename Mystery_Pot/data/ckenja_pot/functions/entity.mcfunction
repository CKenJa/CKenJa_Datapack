execute if entity @s[type=item,tag=!global.ignore,tag=!global.ignore.gui,tag=!global.ignore.kill] if data entity @s Item{id:"minecraft:dried_kelp"} if block ~ ~-1 ~ minecraft:cauldron[level=3] if block ~ ~-2 ~ minecraft:soul_campfire run function ckenja_pot:entity/start
execute if entity @s[type=armor_stand,tag=ckenja_pot_entity] run function ckenja_pot:entity/general
