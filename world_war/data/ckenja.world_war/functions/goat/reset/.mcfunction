#> ckenja.world_war:goat/reset/
#
#
#
# @within function ckenja.world_war:goat/

execute if entity @s[type=#ckenja.world_war.red] run function ckenja.world_war:goat/reset/red
execute if entity @s[type=#ckenja.world_war.blue] run function ckenja.world_war:goat/reset/blue
data modify entity @s Brain.memories."minecraft:ram_cooldown_ticks".value set value 1