#> ckenja_pig_hook:player/exist_hook/unhook
#@within ckenja_pig_hook:player/exist_hook/have

execute as @e[tag=ckenja_pig_hook_hook,distance=..384] if score @s ckj_pig_hook_id = #tmp_id ckj_pig_hook_id run function ckenja_pig_hook:behavior/unhook