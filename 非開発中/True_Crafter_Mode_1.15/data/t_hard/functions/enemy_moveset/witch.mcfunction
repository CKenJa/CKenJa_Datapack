
#クリーパーに対して雷撃
execute at @e[tag=!T_Hard_Powered,type=creeper,distance=..8] run particle enchanted_hit ~ ~0.5 ~ 0.25 0.5 0.25 0 25
execute at @e[tag=!T_Hard_Powered,type=creeper,distance=..8] run playsound minecraft:entity.evoker.prepare_attack master @a ~ ~ ~ 1 2
tag @e[tag=!T_Hard_Powered,type=creeper,distance=..8] add T_Hard_Powered 

#豚を変換
execute at @e[type=pig,distance=..8] run particle enchanted_hit ~ ~0.5 ~ 0.25 0.5 0.25 0 25
execute at @e[type=pig,distance=..8] run playsound minecraft:entity.evoker.prepare_attack master @a ~ ~ ~ 1 2
execute at @e[type=pig,distance=..8] run summon zombie_pigman ~ ~ ~ {Anger:32767,DeathLootTable:"minecraft:entities/pig"}
tag @e[type=pig,distance=..8] add T_Hard_GoVoid

#ウサギを変換
execute at @e[type=rabbit,distance=..8,nbt=!{RabbitType:99}] run particle enchanted_hit ~ ~0.5 ~ 0.25 0.25 0.25 0 25
execute at @e[type=rabbit,distance=..8,nbt=!{RabbitType:99}] run playsound minecraft:entity.evoker.prepare_attack master @a ~ ~ ~ 1 2
execute as @e[type=rabbit,distance=..8,nbt=!{RabbitType:99}] run data merge entity @s {RabbitType:99}

#バフを配る
effect give @e[type=#t_hard:hostiles,type=!witch,distance=0.1..8] fire_resistance 1 0
effect give @e[type=#t_hard:hostiles,type=!witch,distance=0.1..8] resistance 1 0
effect give @e[type=#t_hard:hostiles,type=!witch,distance=0.1..8] speed 1 0
effect clear @e[type=#t_hard:hostiles,type=!witch,distance=0.1..8] poison
effect clear @e[type=#t_hard:hostiles,type=!witch,distance=0.1..8] slowness
effect clear @e[type=#t_hard:hostiles,type=!witch,distance=0.1..8] weakness
execute at @e[type=#t_hard:hostiles,type=!witch,distance=0.1..8] run particle witch ~ ~0.5 ~ 0.25 0.5 0.25 0 1

#ワープ
execute positioned ^ ^ ^-0.5 facing entity @p[distance=..16,tag=!T_Hard_Without] feet positioned ^ ^ ^0.5 if entity @s[distance=..0.22] unless entity @s[scores={T_Hard_Moveset1=40..}] run scoreboard players add @s T_Hard_Moveset1 1
execute if entity @a[distance=..5,tag=!T_Hard_Without] unless entity @s[scores={T_Hard_Moveset1=40..}] run scoreboard players add @s T_Hard_Moveset1 1
execute if entity @s[scores={T_Hard_Moveset1=40}] run particle witch ~ ~0.5 ~ 0.25 0.5 0.25 0 5
execute if entity @s[scores={T_Hard_Moveset1=40}] run particle explosion ~ ~1 ~ 0 0 0 0 0
execute if entity @s[scores={T_Hard_Moveset1=40}] run playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 2 1
execute if entity @s[scores={T_Hard_Moveset1=40}] facing entity @p[distance=..5] eyes rotated ~ 0 if block ^ ^ ^-1 #t_hard:no_collision run function t_hard:common_moveset/back_warp
execute if entity @s[scores={T_Hard_Moveset1=40}] facing entity @p[distance=..5] eyes rotated ~ 0 unless block ^ ^ ^-1 #t_hard:no_collision run function t_hard:common_moveset/foward_warp
execute if entity @s[scores={T_Hard_Moveset1=40}] if entity @a[distance=5..16] rotated ~ 0 run function t_hard:common_moveset/foward_warp
scoreboard players add @s[scores={T_Hard_Moveset1=40..}] T_Hard_Moveset1 1
#execute if entity @s[scores={T_Hard_Moveset1=42}] rotated ~ 0 run summon evoker_fangs ^ ^ ^2
#execute if entity @s[scores={T_Hard_Moveset1=42}] rotated ~ 0 run summon evoker_fangs ^1 ^ ^2
#execute if entity @s[scores={T_Hard_Moveset1=42}] rotated ~ 0 run summon evoker_fangs ^-1 ^ ^2
execute if entity @s[scores={T_Hard_Moveset1=42}] run particle witch ~ ~0.5 ~ 0.25 0.5 0.25 0 5
execute if entity @s[scores={T_Hard_Moveset1=42}] run particle explosion ~ ~1 ~ 0 0 0 0 0
scoreboard players reset @s[scores={T_Hard_Moveset1=80..}] T_Hard_Moveset1

#段差飛び越え
function t_hard:common_moveset/jump_gap

#ドア破壊、ただしオプションで封じられてる場合を除く
execute if score #T_Hard_Gamerule T_Hard_Gamerule1 matches 1 run function t_hard:common_moveset/break_door

#水の中ですいすい
execute if entity @a[distance=..30,tag=!T_Hard_Without] if entity @s[nbt={HurtTime:0s}] if block ~ ~0.5 ~ #t_hard:liquid run function t_hard:common_moveset/swim