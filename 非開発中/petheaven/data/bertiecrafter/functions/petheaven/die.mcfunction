#Current As/At: A recently named pet.
effect give @s minecraft:invisibility 1000000 0 true
effect give @s minecraft:weakness 1000000 127 true
data modify entity @s Invulnerable set value 1b
data modify entity @s CustomNameVisible set value 1b
data modify entity @s Silent set value 1b
tellraw @a {"selector":"@s","color":"white","extra":[{"translate":"death.attack.generic"}]}
team join Heaven @s
particle minecraft:poof ~ ~1.25 ~ 0.5 0.4 0.5 0.025 20
loot spawn ~ ~ ~ kill @s
tag @s add bcph_died