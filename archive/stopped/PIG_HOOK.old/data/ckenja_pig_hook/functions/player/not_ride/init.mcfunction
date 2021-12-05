#> ckenja_pig_hook:player/not_ride/init
#@within ckenja_pig_hook:player/not_ride
scoreboard players operation #tmp_id ckj03_data = @s ckj_pig_hook_id
execute as @e[tag=ckenja_pig_hook_pig_ride,distance=..16] if score @s ckj_pig_hook_id = #tmp_id ckj03_data run function ckenja_pig_hook:pig/end
tag @s remove ckenja_pig_hook_player_ride