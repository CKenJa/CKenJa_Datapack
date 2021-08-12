#> ckenja.pigrapple:player/not_have/drop
#@within ckenja.pigrapple:player/not_have/validate

scoreboard players set #tmp_drop ckj04.data 1
execute if score #tmp ckj_pig_hook_slt matches 0..8 run loot replace entity @s weapon.mainhand loot ckenja.pigrapple:pig_hook_copy
execute if score #tmp ckj_pig_hook_slt matches -106 run loot replace entity @s weapon.offhand loot ckenja.pigrapple:pig_hook_copy
tag @s add ckenja.pigrapple_player_have