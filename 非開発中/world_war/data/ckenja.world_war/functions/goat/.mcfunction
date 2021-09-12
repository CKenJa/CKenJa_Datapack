#> ckenja.world_war:goat/
#
#
#
# @within function ckenja.world_war:tick

execute store result score $tmp ckenja.world_war run data get entity @s Brain.memories."minecraft:ram_cooldown_ticks".value
execute if score $tmp ckenja.word_war matches 1.. as @s run function ckenja.world_war:goat/reset/
# 同期
