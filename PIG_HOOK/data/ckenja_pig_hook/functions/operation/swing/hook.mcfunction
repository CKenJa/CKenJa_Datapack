summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0f,Duration:0,Tags:["ckenja_pig_hook_aec"]}
execute at @s as @e[type=area_effect_cloud,tag=ckenja_pig_hook_aec,distance=..16] run function ckenja_pig_hook:operation/swing/aec
function ckenja_pig_hook:measure/general