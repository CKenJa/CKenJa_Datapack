#> ckenja_pig_hook:player/not_ride/general
#@within ckenja_pig_hook:player

execute if entity @s[tag=ckenja_pig_hook_player_have] run function ckenja_pig_hook:player/not_ride/have
execute if entity @s[tag=ckenja_pig_hook_player_ride] run function ckenja_pig_hook:player/not_ride/init