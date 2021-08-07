#> ckenja.pigrapple:player/exist_hook/have
#@within ckenja.pigrapple:player/exist_hook/general

execute if score #tmp_drop ckj04.data matches 1 run function ckenja.pigrapple:behavior/switch
execute if score @s ckj04.coas matches 1.. run function ckenja.pigrapple:player/exist_hook/unhook
execute if data storage ckj04: fetch_entitydata{Tags:["ckenja.pigrapple_player_jet"]} run function ckenja.pigrapple:operation/jet/refresh_direction