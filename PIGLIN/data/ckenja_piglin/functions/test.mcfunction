scoreboard players set @e[tag=ckenja_piglin_laglin] ckenja_piglin 0
scoreboard players add @e[scores={ckenja_piglin=0..}] ckenja_piglin 1
execute as @e[scores={ckenja_piglin=40}] run data merge entity @s {NoAI:True}
scoreboard players set @e[scores={ckenja_piglin=50}] ckenja_piglin 0
execute as @e[scores={ckenja_piglin=0}] run data merge entity @s {NoAI:False}
#summon minecraft:piglin ~ ~ ~ {IsImmuneToZombification:1b,CannotHunt:1b,Tags:["ckenja_piglin_laglin"],HandItems:[{id:"minecraft:golden_sword",Count:1b},{}],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b}],Attributes:[{Name:generic.movement_speed,Base:2.5}]}
#/give @p minecraft:player_head{display:{Name:"{\"text\":\"Ravager\"}"},SkullOwner:{Id:[I;-988784499,1538476442,-1335897902,1631763943],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvY2QyMGJmNTJlYzM5MGEwNzk5Mjk5MTg0ZmM2NzhiZjg0Y2Y3MzJiYjFiZDc4ZmQxYzRiNDQxODU4ZjAyMzVhOCJ9fX0="}]}}} 1