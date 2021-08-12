#> ckenja.pigrapple:player/ride/general
#@within ckenja.pigrapple:player/general

execute unless data storage ckj04: fetch_entitydata{RootVehicle: {Entity: {Tags: ["ckenja.pigrapple_pig_ride"]}}} run function ckenja.pigrapple:player/ride/init

execute store success score #tmp_hook ckj04.data run execute if entity @e[distance=..384,tag=ckenja.pigrapple_hook]
execute if score #tmp_hook ckj04.data matches 0 run function ckenja.pigrapple:player/none_hook/general
execute if score #tmp_hook ckj04.data matches 1 run function ckenja.pigrapple:player/exist_hook/general
