execute unless score #lava ckenja_nether matches -1 if block ~1 ~ ~ minecraft:water run summon area_effect_cloud ~1 ~ ~ {Duration:2147483637,Tags:["ckenja_nether_water"]}
execute unless score #lava ckenja_nether matches -1 if block ~1 ~ ~ minecraft:water run setblock ~1 ~ ~ minecraft:obsidian

execute unless score #lava ckenja_nether matches -1 if block ~-1 ~ ~ minecraft:water run summon area_effect_cloud ~-1 ~ ~ {Duration:2147483637,Tags:["ckenja_nether_water"]}
execute unless score #lava ckenja_nether matches -1 if block ~-1 ~ ~ minecraft:water run setblock ~-1 ~ ~ minecraft:obsidian

execute unless score #lava ckenja_nether matches -1 if block ~ ~1 ~ minecraft:water run summon area_effect_cloud ~ ~1 ~1 {Duration:2147483637,Tags:["ckenja_nether_water"]}
execute unless score #lava ckenja_nether matches -1 if block ~ ~1 ~ minecraft:water run setblock ~ ~1 ~ minecraft:obsidian

execute unless score #lava ckenja_nether matches -1 if block ~ ~-1 ~ minecraft:water run summon area_effect_cloud ~ ~-1 ~ {Duration:2147483637,Tags:["ckenja_nether_water"]}
execute unless score #lava ckenja_nether matches -1 if block ~ ~-1 ~ minecraft:water run setblock ~ ~-1 ~ minecraft:obsidian

execute unless score #lava ckenja_nether matches -1 if block ~ ~ ~1 minecraft:water run summon area_effect_cloud ~ ~ ~1 {Duration:2147483637,Tags:["ckenja_nether_water"]}
execute unless score #lava ckenja_nether matches -1 if block ~ ~ ~1 minecraft:water run setblock ~ ~ ~1 minecraft:obsidian

execute unless score #lava ckenja_nether matches -1 if block ~ ~ ~-1 minecraft:water run summon area_effect_cloud ~ ~ ~-1 {Duration:2147483637,Tags:["ckenja_nether_water"]}
execute unless score #lava ckenja_nether matches -1 if block ~ ~ ~-1 minecraft:water run setblock ~ ~ ~-1 minecraft:obsidian

execute if score #lava ckenja_nether matches 1 run setblock ~ ~ ~ minecraft:lava
execute unless score #lava ckenja_nether matches 1 run setblock ~ ~ ~ minecraft:air