#> ckenja.pigrapple:player/not_ride/init
#@within ckenja.pigrapple:player/not_ride
scoreboard players operation #tmp_id ckj04.data = @s ckj_pig_hook_id
execute as @e[tag=ckenja.pigrapple_pig_ride,distance=..16] if score @s ckj_pig_hook_id = #tmp_id ckj04.data run function ckenja.pigrapple:pig/end
tag @s remove ckenja.pigrapple_player_ride