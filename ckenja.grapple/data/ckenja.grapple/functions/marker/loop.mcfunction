#> ckenja.grapple:marker/loop
#
#
#
# @within function ckenja.grapple:marker/

scoreboard players remove $length ckenja.grapple 1
execute unless score $length ckenja.grapple matches 0.. run tp @s
execute if score $length ckenja.grapple matches 0.. positioned ^ ^ ^1 run function ckenja.grapple:marker/loop