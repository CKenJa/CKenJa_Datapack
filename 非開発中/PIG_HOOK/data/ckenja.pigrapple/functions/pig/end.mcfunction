#> ckenja.pigrapple:pig/end
#@within ckenja.pigrapple:player_not_ride/general

function ckenja.pigrapple:pig/kill
scoreboard players operation #tmp_id ckj04.data = @s ckj_pig_hook_id
execute as @e[tag=ckenja.pigrapple_hook,distance=..384] if score @s ckj_pig_hook_id = #tmp_id ckj04.data run function ckenja.pigrapple:behavior/unhook