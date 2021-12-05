summon minecraft:area_effect_cloud ~ ~ ~ {Duration:0,Tags:["rngcloud"]}
execute store result score #tmp2 ckj01_data run data get entity @e[type=minecraft:area_effect_cloud,tag=rngcloud,limit=1] UUID[0] 0.000000000931322574615478515625
execute if score #tmp2 ckj01_data matches ..-2 run function ckenja_ghost:ghost/growth/1
execute if score #tmp2 ckj01_data matches -1 run function ckenja_ghost:ghost/growth/2
execute if score #tmp2 ckj01_data matches 0 run function ckenja_ghost:ghost/growth/3
execute if score #tmp2 ckj01_data matches 1.. run function ckenja_ghost:ghost/growth/4
tag @s remove ckenja_ghost_young