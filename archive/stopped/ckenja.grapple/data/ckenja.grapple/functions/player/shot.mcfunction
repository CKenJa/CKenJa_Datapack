#> ckenja.grapple:player/shot
#
#
#
# @within function ckenja.grapple:player/click

scoreboard players set $length ckenja.grapple 0
execute anchored eyes positioned ^ ^ ^1 if block ~ ~ ~ air run function ckenja.grapple:player/loop