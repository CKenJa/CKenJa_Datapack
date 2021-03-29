execute facing entity @e[tag=ckenja_pig_hook_now] feet positioned ^ ^ ^8 run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0f,Duration:0,Tags:["ckenja_pig_hook_aec"]}
execute as @e[type=area_effect_cloud,tag=ckenja_pig_hook_aec,distance=..16] run function ckenja_pig_hook:operation/swing/aec

say yeahgh