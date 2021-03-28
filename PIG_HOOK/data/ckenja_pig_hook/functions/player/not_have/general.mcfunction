#> ckenja_pig_hook:player/not_have/general
#@within ckenja_pig_hook:player

scoreboard players set #tmp_drop ckj03_data 0
execute as @e[type=item,distance=..16] run function ckenja_pig_hook:player/not_have/validate
execute if score #tmp_drop ckj03_data matches 0 run tag @s remove ckenja_pig_hook_player_have