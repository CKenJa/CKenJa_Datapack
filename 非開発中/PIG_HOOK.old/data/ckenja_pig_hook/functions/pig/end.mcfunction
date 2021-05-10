#> ckenja_pig_hook:pig/end
#@within ckenja_pig_hook:player_not_ride/general

function ckenja_pig_hook:pig/kill
scoreboard players operation #tmp_id ckj03_data = @s ckj_pig_hook_id
execute as @e[tag=ckenja_pig_hook_hook,distance=..384] if score @s ckj_pig_hook_id = #tmp_id ckj03_data run function ckenja_pig_hook:behavior/unhook