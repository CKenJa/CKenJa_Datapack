#> ckenja.grapple:player/
#
#
#
# @within function ckenja.grapple:tick
execute if score @s ckenja.grapple matches 1.. run function ckenja.grapple:player/click
data modify storage ckenja.grapple: player.Motion set from entity @s Motion