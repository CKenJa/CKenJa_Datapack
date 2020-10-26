summon minecraft:area_effect_cloud ~ ~ ~ {Duration:0,Tags:["rngcloud"]}
execute store result score #tmp ckj01_data run data get entity @e[type=minecraft:area_effect_cloud,tag=rngcloud,limit=1] UUID[0] 0.00000000186264514923095703125
execute if score #tmp ckj01_data matches ..-4 run function ckenja_ghost:trick/1
execute if score #tmp ckj01_data matches -3 run function ckenja_ghost:trick/2
execute if score #tmp ckj01_data matches -2 run function ckenja_ghost:trick/3
execute if score #tmp ckj01_data matches 1 run function ckenja_ghost:trick/4
execute if score #tmp ckj01_data matches 0.. run function ckenja_ghost:trick/5
#execute if score #tmp ckj01_data matches 1 run function ckenja_ghost:trick/6
#execute if score #tmp ckj01_data matches 2 run function ckenja_ghost:trick/7
#execute if score #tmp ckj01_data matches 3.. run function ckenja_ghost:trick/8