execute if entity @s[tag=ckenja.pigrapple_witch] run particle witch ~ ~ ~ 0 0 0 0 1 normal @s
execute unless entity @s[tag=ckenja.pigrapple_witch] run particle soul_fire_flame ~ ~ ~ 0 0 0 0 1 normal @s
execute unless entity @s[distance=..0.5] positioned ^ ^ ^0.5 run function ckenja.pigrapple:behavior/chain
