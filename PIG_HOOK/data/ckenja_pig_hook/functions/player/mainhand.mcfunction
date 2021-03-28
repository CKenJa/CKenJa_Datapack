#> ckenja_pig_hook:player/mainhand
#@within ckenja_pig_hook:player

execute store result score @s ckj_pig_hook_slt run data get storage ckj03: fetch_entitydata.SelectedItemSlot
tag @s add ckenja_pig_hook_player_have