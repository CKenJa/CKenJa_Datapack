execute unless data storage ckj03: fetch_entitydata{RootVehicle: {Entity: {Tags: ["ckenja_pig_hook_pig_ride"]}}} as @e[type=pig,distance=..16,tag=!ckenja_pig_hook_pig_ride,tag=ckenja_pig_hook_pig_ride,sort=nearest] run tag @s add ckenja_pig_hook_pig_ride

execute store success score #tmp_hook ckj03_data run execute if entity @e[distance=..384,tag=ckenja_pig_hook_hook]
execute if score #tmp_hook ckj03_data matches 1 run function ckenja_pig_hook:player/exist_hook/general
execute if score #tmp_hook ckj03_data matches 1 run function ckenja_pig_hook:player/none_hook/general