#> ckenja.world_war:goat/red/reset
#
#
#
# @within function ckenja.world_war:goat/red/

teleport @s ~ ~ ~ facing entity @e[type=#ckenja.world_war.blue,distance=..16,sort=nearest,limit=1]
data modify entity @s Brain.memories."minecraft:ram_cooldown_ticks".value set value 1

#最寄りのモブを同期させると同時に近くのモブを敵にする
#execute rotated as @s as @e[type=#ckenja.world_war,distance=..16,sort=nearest] run function ckenja.world_war:goat/red/entity
say red/reset
tp @e[type=cow,limit=1] ~ ~ ~3