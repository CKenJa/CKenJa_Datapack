#> ckenja_pig_hook:player/not_ride/have
#@within ckenja_pig_hook:player/not_ride/general

execute if score @s ckj03_coas matches 1 run function ckenja_pig_hook:player/not_ride/click
execute if score #tmp_drop ckj03_data matches 1 run function ckenja_pig_hook:behavior/switch