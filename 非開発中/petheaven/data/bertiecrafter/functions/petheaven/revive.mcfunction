#Current As/At: Pet who will be revived
kill @e[type=item,nbt={Item:{id:"minecraft:totem_of_undying"}},limit=1,sort=nearest]
effect give @s minecraft:instant_health 1 10 true
effect clear @s minecraft:invisibility
effect clear @s minecraft:weakness
data modify entity @s Invulnerable set value 0b
data modify entity @s CustomNameVisible set value 0b
data modify entity @s Silent set value 0b
team leave @s
tellraw @a {"translate":"menu.respawning","extra":[{"text":": "},{"selector":"@s"}]}
particle minecraft:totem_of_undying ~ ~3 ~ 0 0 0 1 200
particle minecraft:flash ~ ~0.5 ~ 0 0 0 0.01 1 force
playsound minecraft:item.totem.use master @a
tag @s remove bcph_died
tag @s remove bcph_initiated
scoreboard players reset @s bcph_Progress