#> ckenja_pig_hook:player/exist_hook/general
#@within ckenja_pig_hook:player/ride/general

execute if entity @s[tag=ckenja_pig_hook_player_have] run function ckenja_pig_hook:player/exist_hook/have

#モードが切り替わったらoperation/jet内で#tmp_jetを0にする
execute if data storage ckj03: fetch_entitydata{Tags:["ckenja_pig_hook_player_jet"]} run function ckenja_pig_hook:operation/jet/general
execute unless data storage ckj03: fetch_entitydata{Tags:["ckenja_pig_hook_player_jet"]} run function ckenja_pig_hook:operation/swing/general
