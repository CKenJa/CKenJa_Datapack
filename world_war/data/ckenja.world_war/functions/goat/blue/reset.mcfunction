#> ckenja.world_war:goat/blue/reset
#
#
#
# @within function ckenja.world_war:goat/blue/

teleport @s ~ ~ ~ facing entity @e[type=#ckenja.world_war:red,distance=..16,limit=1]
data modify entity @s Brain.memories."minecraft:ram_cooldown_ticks".value set value 1