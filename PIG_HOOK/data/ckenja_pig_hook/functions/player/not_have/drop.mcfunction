#> ckenja_pig_hook:player/not_have/drop
#@within ckenja_pig_hook:player/not_have/validate

scoreboard players set #tmp_drop ckj03_data 1
execute if score #tmp ckj_pig_hook_slt matches 0..8 run loot replace entity @s weapon.mainhand loot ckenja_pig_hook:pig_hook_copy
execute if score #tmp ckj_pig_hook_slt matches -106 run loot replace entity @s weapon.offhand loot ckenja_pig_hook:pig_hook_copy
tag @s add ckenja_pig_hook_player_have