#> ckenja.grapple:marker/loop
#
#
#
# @within function ckenja.grapple:marker/

scoreboard players remove #tmp.length ckenja.grapple 1
execute at @s unless score #tmp.length ckenja.grapple matches 0.. run tp @s ~ ~ ~
execute if score #tmp.length ckenja.grapple matches 0.. positioned ^ ^ ^1 run function ckenja.grapple:marker/loop