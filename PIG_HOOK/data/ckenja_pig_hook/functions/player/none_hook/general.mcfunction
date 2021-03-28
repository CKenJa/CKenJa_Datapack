#> ckenja_pig_hook:player/none_hook/general
#@within ckenja_pig_hook:player/ride/general

execute if entity @s[tag=ckenja_pig_hook_player_have] run function ckenja_pig_hook:player/none_hook/have
execute if data storage ckj03: fetch_entitydata{RootVehicle:{Entity:{OnGround:1b}}} run tag @s add ckenja_pig_hook_player_jump