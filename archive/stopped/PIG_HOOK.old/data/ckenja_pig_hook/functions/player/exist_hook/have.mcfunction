#> ckenja_pig_hook:player/exist_hook/have
#@within ckenja_pig_hook:player/exist_hook/general

execute if score #tmp_drop ckj03_data matches 1 run function ckenja_pig_hook:behavior/switch
execute if score @s ckj03_coas matches 1.. run function ckenja_pig_hook:player/exist_hook/unhook
execute if data storage ckj03: fetch_entitydata{Tags:["ckenja_pig_hook_player_jet"]} run function ckenja_pig_hook:operation/jet/refresh_direction