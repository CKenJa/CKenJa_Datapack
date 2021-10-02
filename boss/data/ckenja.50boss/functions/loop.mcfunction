#> ckenja.50boss:loop
#
#
#
# @within function ckenja.50boss:entity

execute align xyz unless entity @e[type=marker,tag=ckenja.50boss.blockmarker,distance=..0.9] run function ckenja.50boss:set
execute positioned ^1 ^ ^ align xyz unless entity @e[type=marker,tag=ckenja.50boss.blockmarker,distance=..0.9] run function ckenja.50boss:set
execute positioned ^-1 ^ ^ align xyz unless entity @e[type=marker,tag=ckenja.50boss.blockmarker,distance=..0.9] run function ckenja.50boss:set
execute positioned ^ ^ ^1 align xyz unless entity @e[type=marker,tag=ckenja.50boss.blockmarker,distance=..0.9] run function ckenja.50boss:set
execute positioned ^ ^ ^-1 align xyz unless entity @e[type=marker,tag=ckenja.50boss.blockmarker,distance=..0.9] run function ckenja.50boss:set
scoreboard players remove $i ckenja.50boss 1
execute if score $i ckenja.50boss matches 0.. positioned ^ ^0.5 ^ run function ckenja.50boss:loop