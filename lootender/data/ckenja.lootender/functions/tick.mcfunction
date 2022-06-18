#> ckenja.lootender:tick
#
#
#
# @within tag/function minecraft:tick

execute as @a[tag=ckenja.lootender.opened] run function ckenja.lootender:player
execute as @e[type=marker,tag=ckenja.lootender.marker] run function ckenja.lootender:marker/_