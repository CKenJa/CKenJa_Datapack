
#エンチャされた弓を拾ったら遠距離オンリーに移行
execute if entity @s[nbt={HandItems:[{id:"minecraft:bow",Count:1b,tag:{Enchantments:[{}]}},{}]}] run tag @s add T_Hard_Ske_NoSwitch

#近接武器を拾ったら近距離オンリーに移行
execute unless entity @s[nbt={HandItems:[{id:"minecraft:stone_sword",Count:1b},{}]}] unless entity @s[nbt={HandItems:[{id:"minecraft:bow",Count:1b}]}] run tag @s add T_Hard_Ske_NoSwitch

#離れてる時は弓
execute if entity @s[tag=T_Hard_Ske_Melee,tag=!T_Hard_Ske_NoSwitch] if entity @a[distance=5..16,tag=!T_Hard_Without] run replaceitem entity @s weapon.mainhand minecraft:bow
execute if entity @s[tag=T_Hard_Ske_Melee] if entity @a[distance=5..16,tag=!T_Hard_Without] run tag @s add T_Hard_Ske_Ranged
tag @e[tag=T_Hard_Ske_Ranged] remove T_Hard_Ske_Melee

#近い時は近接武器
execute if entity @s[tag=T_Hard_Ske_Ranged,tag=!T_Hard_Ske_NoSwitch] if entity @a[distance=..5,tag=!T_Hard_Without] run replaceitem entity @s weapon.mainhand minecraft:stone_sword
execute if entity @s[tag=T_Hard_Ske_Ranged] if entity @a[distance=..5,tag=!T_Hard_Without] run tag @s add T_Hard_Ske_Melee
tag @e[tag=T_Hard_Ske_Melee] remove T_Hard_Ske_Ranged

#背後チェックして飛びかかり/バックステップ
execute if entity @s[tag=T_Hard_Ske_Ranged2] if entity @a[distance=..5,tag=!T_Hard_Without] run scoreboard players add @s T_Hard_Moveset1 1
execute if entity @s[tag=T_Hard_Ske_Ranged] positioned ^ ^ ^-0.5 facing entity @p[distance=..16,tag=!T_Hard_Without] feet positioned ^ ^ ^0.5 if entity @s[distance=..0.22] run scoreboard players add @s T_Hard_Moveset1 1
scoreboard players set @s[tag=T_Hard_Ske_Ranged,scores={T_Hard_Moveset1=40}] Motion_Speed 8
execute if entity @s[tag=T_Hard_Ske_Ranged,scores={T_Hard_Moveset1=40}] rotated ~ 0 unless block ^ ^-1 ^2 #t_hard:no_collision run function t_hard:common_moveset/leap_attack

execute if entity @s[tag=T_Hard_Ske_Melee] if entity @a[distance=..5,tag=!T_Hard_Without] run scoreboard players add @s T_Hard_Moveset1 1
scoreboard players set @s[tag=T_Hard_Ske_Melee,scores={T_Hard_Moveset1=40}] Motion_Speed 8
execute if entity @s[tag=!T_Hard_Ske_Ranged,scores={T_Hard_Moveset1=40}] facing entity @p eyes rotated ~ 0 unless block ^ ^-1 ^-3 #t_hard:no_collision if block ^ ^ ^-1 #t_hard:no_collision run function t_hard:common_moveset/back_step
execute if entity @s[tag=!T_Hard_Ske_Ranged,scores={T_Hard_Moveset1=40}] facing entity @p eyes rotated ~ 0 unless block ^ ^ ^-1 #t_hard:no_collision run function t_hard:common_moveset/leap_attack
execute if entity @s[tag=!T_Hard_Ske_Ranged,scores={T_Hard_Moveset1=40}] facing entity @p eyes rotated ~ 0 if block ^ ^-1 ^-3 #t_hard:no_collision run function t_hard:common_moveset/leap_attack
scoreboard players reset @s[scores={T_Hard_Moveset1=40..}] T_Hard_Moveset1

#段差飛び越え
function t_hard:common_moveset/jump_gap

#ドア破壊、ただしオプションで封じられてる場合を除く
execute if score #T_Hard_Gamerule T_Hard_Gamerule1 matches 1 run function t_hard:common_moveset/break_door

#水の中ですいすい
execute if entity @a[distance=..30,tag=!T_Hard_Without] if entity @s[nbt={HurtTime:0s}] if block ~ ~0.5 ~ #t_hard:liquid run function t_hard:common_moveset/swim