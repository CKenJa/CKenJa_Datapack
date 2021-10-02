#> ckenja.50boss:tag
#
#
#
# @within function ckenja.50boss:tick

execute at @s if entity @e[type=marker,tag=ckenja.50boss.blockmarker.old,distance=..0.9,limit=1] run kill @s
tag @s add ckenja.50boss.blockmarker.old
tag @s remove ckenja.50boss.blockmarker