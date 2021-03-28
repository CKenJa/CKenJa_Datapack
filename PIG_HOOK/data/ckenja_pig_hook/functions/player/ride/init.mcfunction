#> ckenja_pig_hook:player/ride/init
#@within ckenja_pig_hook:player/ride

scoreboard players operation #tmp_id ckj03_data = @s ckj03_id
execute as @e[type=pig,distance=..16,tag=!ckenja_pig_hook_pig_ride,tag=ckenja_pig_hook_pig_ride] if score @s ckj_pig_hook_id = #tmp_id ckj03_data run tag @s add ckenja_pig_hook_pig_ride
tag @s add ckenja_pig_hook_player_ride