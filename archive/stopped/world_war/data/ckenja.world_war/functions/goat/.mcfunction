#> ckenja.world_war:goat/
#
#
#
# @within function ckenja.world_war:tick

execute store result score $tmp ckenja.world_war run data get entity @s Brain.memories."minecraft:ram_cooldown_ticks".value
execute if entity @s[tag=ckenja.world_war.red] run function ckenja.world_war:goat/red/
execute if entity @s[tag=ckenja.world_war.blue] run function ckenja.world_war:goat/blue/
