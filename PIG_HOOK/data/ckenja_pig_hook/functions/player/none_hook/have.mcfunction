#> ckenja_pig_hook:player/none_hook/have
#@within ckenja_pig_hook:player/none_hook/general

execute if score @s ckj03_coas matches 1.. run function ckenja_pig_hook:behavior/shot
execute if score #tmp_drop ckj03_data matches 1 run function ckenja_pig_hook:behavior/jump