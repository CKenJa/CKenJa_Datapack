scoreboard players operation #tmp_id ckj03_data += @s ckj03_id
execute unless entity @e[tag=ckenja_pig_hook_hook,distance=..384] run function ckenja_pig_hook:tmp/summon
execute as @e[tag=ckenja_pig_hook_hook,distance=..384] if score @s ckj_pig_hook_id = $tmp_id ckj03_data run function ckenja_pig_hook:tmp/tp

advancement revoke @s only ckenja_pig_hook:shot_crossbow