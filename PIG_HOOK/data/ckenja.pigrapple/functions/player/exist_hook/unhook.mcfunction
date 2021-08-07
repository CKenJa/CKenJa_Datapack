#> ckenja.pigrapple:player/exist_hook/unhook
#@within ckenja.pigrapple:player/exist_hook/have

execute as @e[tag=ckenja.pigrapple_hook,distance=..384] if score @s ckj_pig_hook_id = #tmp_id ckj_pig_hook_id run function ckenja.pigrapple:behavior/unhook