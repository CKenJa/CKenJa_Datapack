#> ckenja.pigrapple:player/ride/init
#@within ckenja.pigrapple:player/ride

scoreboard players operation #tmp_id ckj04.data = @s ckj04.id
execute as @e[type=pig,distance=..16,tag=!ckenja.pigrapple_pig_ride,tag=ckenja.pigrapple_pig_ride] if score @s ckj_pig_hook_id = #tmp_id ckj04.data run tag @s add ckenja.pigrapple_pig_ride
tag @s add ckenja.pigrapple_player_ride