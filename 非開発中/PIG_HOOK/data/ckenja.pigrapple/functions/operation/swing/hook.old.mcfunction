summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0f,Duration:0,Tags:["ckenja.pigrapple_aec"]}
execute at @s as @e[type=area_effect_cloud,tag=ckenja.pigrapple_aec,distance=..16] run function ckenja.pigrapple:operation/swing/aec
function ckenja.pigrapple:measure/general