#> ckenja.pigrapple:player/not_have/general
#@within ckenja.pigrapple:player

scoreboard players set #tmp_drop ckj04.data 0
execute as @e[type=item,distance=..16] run function ckenja.pigrapple:player/not_have/validate
execute if score #tmp_drop ckj04.data matches 0 run tag @s remove ckenja.pigrapple_player_have