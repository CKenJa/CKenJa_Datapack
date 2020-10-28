execute store success score #tmp ckj01_data run tp @s ^ ^ ^0.4 facing entity @e[type=minecraft:villager,limit=1]
execute if score #tmp ckj01_data matches 1 as @e[type=minecraft:villager,limit=1,distance=..1] run function ckenja_ghost:ability/surprise
execute if score #tmp ckj01_data matches 0 run function ckenja_ghost:ability/remove
