#> ckenja.grapple:marker/check
#
#
#
# @within function ckenja.grapple:pig/

data modify entity @s Pos set from storage ckenja.grapple: tmp.Pos
execute if entity @e[tag=ckenja.grapple.marker] run say marker

execute at @s store success score #block.if ckenja.grapple run execute if block ~ ~ ~ air