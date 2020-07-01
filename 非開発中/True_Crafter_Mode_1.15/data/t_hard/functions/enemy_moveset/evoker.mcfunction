
#どういうわけかゴーレムを分解
execute at @e[type=iron_golem,distance=..5] run particle enchanted_hit ~ ~0.5 ~ 0.25 0.5 0.25 0 25
execute at @e[type=iron_golem,distance=..5] run playsound minecraft:entity.evoker.prepare_attack hostile @a ~ ~ ~ 1.5 2
execute at @e[type=iron_golem,distance=..5] run playsound minecraft:entity.evoker.celebrate hostile @a ~ ~ ~ 1.5 1
execute at @e[type=iron_golem,distance=..5] run setblock ~ ~ ~ pumpkin
execute at @e[type=iron_golem,distance=..5,nbt=!{PlayerCreated:1b}] run loot spawn ~ ~ ~ loot minecraft:entities/iron_golem
execute at @e[type=iron_golem,distance=..5,nbt={PlayerCreated:1b}] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:iron_block",Count:4b}}
tag @e[type=iron_golem,distance=..5] add T_Hard_GoVoid

#ワープファング ダメージ受けるとカウント進む
execute positioned ^ ^ ^-0.5 facing entity @p[distance=..16,tag=!T_Hard_Without] feet positioned ^ ^ ^0.5 if entity @s[distance=..0.22] unless entity @s[scores={T_Hard_Moveset1=40..}] run scoreboard players add @s T_Hard_Moveset1 1
execute if entity @a[distance=..5,tag=!T_Hard_Without] unless entity @s[scores={T_Hard_Moveset1=40..}] run scoreboard players add @s T_Hard_Moveset1 1
execute unless entity @s[scores={T_Hard_Moveset1=40..}] run scoreboard players add @s[nbt={HurtTime:9s}] T_Hard_Moveset1 20
scoreboard players set @s[nbt={HurtTime:9s},scores={T_Hard_Moveset1=40..}] T_Hard_Moveset1 40
execute if entity @s[scores={T_Hard_Moveset1=40}] run particle witch ~ ~0.5 ~ 0.25 0.5 0.25 0 5
execute if entity @s[scores={T_Hard_Moveset1=40}] run particle explosion ~ ~1 ~ 0 0 0 0 0
execute if entity @s[scores={T_Hard_Moveset1=40}] run playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 2 1
execute if entity @s[scores={T_Hard_Moveset1=40}] if entity @a[distance=..5] rotated ~ 0 if block ^ ^ ^-1 #t_hard:no_collision run function t_hard:common_moveset/back_warp
execute if entity @s[scores={T_Hard_Moveset1=40}] if entity @a[distance=..5] rotated ~ 0 unless block ^ ^ ^-1 #t_hard:no_collision run function t_hard:common_moveset/foward_warp
execute if entity @s[scores={T_Hard_Moveset1=40}] if entity @a[distance=5..16] rotated ~ 0 run function t_hard:common_moveset/foward_warp
scoreboard players add @s[scores={T_Hard_Moveset1=40..}] T_Hard_Moveset1 1
execute if entity @s[scores={T_Hard_Moveset1=42}] rotated ~ 0 run summon evoker_fangs ^ ^ ^2
execute if entity @s[scores={T_Hard_Moveset1=42}] rotated ~ 0 run summon evoker_fangs ^1 ^ ^2
execute if entity @s[scores={T_Hard_Moveset1=42}] rotated ~ 0 run summon evoker_fangs ^-1 ^ ^2
execute if entity @s[scores={T_Hard_Moveset1=42}] run particle witch ~ ~0.5 ~ 0.25 0.5 0.25 0 5
execute if entity @s[scores={T_Hard_Moveset1=42}] run particle explosion ~ ~1 ~ 0 0 0 0 0
scoreboard players reset @s[scores={T_Hard_Moveset1=50..}] T_Hard_Moveset1

#段差飛び越え
function t_hard:common_moveset/jump_gap

#ドア破壊、ただしオプションで封じられてる場合を除く
execute if score #T_Hard_Gamerule T_Hard_Gamerule1 matches 1 run function t_hard:common_moveset/break_door

#水の中ですいすい
execute if entity @a[distance=..30,tag=!T_Hard_Without] if entity @s[nbt={HurtTime:0s}] if block ~ ~0.5 ~ #t_hard:liquid run function t_hard:common_moveset/swim