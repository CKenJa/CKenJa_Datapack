
#シールドクラッシャーでエグいダメージ出されると困る
execute if entity @s[nbt={HandItems:[{id:"minecraft:stone_axe",Count:1b,tag:{display:{Name:'{"text":"Shield Crasher","italic":false}'}}},{}]},nbt=!{Attributes:[{Name:generic.attackDamage,Base:-1.0d}]}] run data merge entity @s {Attributes:[{Name:generic.attackDamage,Base:-1.0d}]}
execute if entity @s[nbt=!{HandItems:[{id:"minecraft:stone_axe",Count:1b,tag:{display:{Name:'{"text":"Shield Crasher","italic":false}'}}},{}]},nbt=!{Attributes:[{Name:generic.attackDamage,Base:2.0d}]}] run data merge entity @s {Attributes:[{Name:generic.attackDamage,Base:2.0d}]}

#エンチャされた弓を拾ったら遠距離オンリーに移行
execute if entity @s[nbt={HandItems:[{id:"minecraft:bow",Count:1b,tag:{Enchantments:[{}]}},{}]}] run tag @s remove T_Hard_Ske_Ranged
execute if entity @s[nbt={HandItems:[{id:"minecraft:bow",Count:1b,tag:{Enchantments:[{}]}},{}]}] run tag @s add T_Hard_Ske_Ranged2

#近接武器を拾ったら近距離オンリーに移行
execute unless entity @s[nbt={HandItems:[{id:"minecraft:stone_axe",Count:1b,tag:{display:{Name:'{"text":"Shield Crasher","italic":false}'}}},{}]}] unless entity @s[nbt={HandItems:[{id:"minecraft:bow",Count:1b}]}] run tag @s remove T_Hard_Ske_Ranged
execute unless entity @s[nbt={HandItems:[{id:"minecraft:stone_axe",Count:1b,tag:{display:{Name:'{"text":"Shield Crasher","italic":false}'}}},{}]}] unless entity @s[nbt={HandItems:[{id:"minecraft:bow",Count:1b}]}] run tag @s remove T_Hard_Ske_Melee
execute unless entity @s[nbt={HandItems:[{id:"minecraft:stone_axe",Count:1b,tag:{display:{Name:'{"text":"Shield Crasher","italic":false}'}}},{}]}] unless entity @s[nbt={HandItems:[{id:"minecraft:bow",Count:1b}]}] run tag @s add T_Hard_Ske_Melee2

#離れてる時は弓
execute if entity @s[tag=T_Hard_Ske_Melee] if entity @a[distance=5..16,tag=!T_Hard_Without] run replaceitem entity @s weapon.mainhand minecraft:bow
execute if entity @s[tag=T_Hard_Ske_Melee] if entity @a[distance=5..16,tag=!T_Hard_Without] run tag @s add T_Hard_Ske_Ranged
tag @e[tag=T_Hard_Ske_Ranged] remove T_Hard_Ske_Melee

#近い時は近接武器
execute if entity @s[tag=T_Hard_Ske_Ranged] if entity @a[distance=..5,tag=!T_Hard_Without] run replaceitem entity @s weapon.mainhand minecraft:stone_axe{display:{Name:"{\"text\":\"Shield Crasher\",\"italic\":false}"},Enchantments:[{id:"minecraft:knockback",lvl:2}],AttributeModifiers:[{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-2.4,Operation:0,UUIDLeast:295765,UUIDMost:752434,Slot:"mainhand"},{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:4.0,Operation:0,UUIDLeast:533,UUIDMost:759233,Slot:"mainhand"}]}
execute if entity @s[tag=T_Hard_Ske_Ranged] if entity @a[distance=..5,tag=!T_Hard_Without] run tag @s add T_Hard_Ske_Melee
tag @e[tag=T_Hard_Ske_Melee] remove T_Hard_Ske_Ranged

#近接当てたら即座にバックステップ
execute if entity @s[tag=T_Hard_Ske_Melee,nbt={OnGround:1b}] if entity @a[distance=..2,nbt=!{HurtTime:0s}] run scoreboard players set @s T_Hard_Moveset1 39
execute if entity @s[tag=T_Hard_Ske_Ranged2,nbt={OnGround:1b}] if entity @a[distance=..2,nbt=!{HurtTime:0s}] run scoreboard players set @s T_Hard_Moveset1 39

#背後チェックしてダッシュ/バックステップ
execute if entity @s[tag=T_Hard_Ske_Melee] if entity @a[distance=..5,tag=!T_Hard_Without] run scoreboard players add @s T_Hard_Moveset1 1
execute if entity @s[tag=T_Hard_Ske_Ranged2] if entity @a[distance=..5,tag=!T_Hard_Without] run scoreboard players add @s T_Hard_Moveset1 1
scoreboard players set @s[tag=!T_Hard_Ske_Ranged,scores={T_Hard_Moveset1=40}] Motion_Speed 7
execute if entity @s[tag=!T_Hard_Ske_Ranged,scores={T_Hard_Moveset1=40}] facing entity @p eyes rotated ~ 0 unless block ^ ^-1 ^-3 #t_hard:no_collision if block ^ ^ ^-1 #t_hard:no_collision run function t_hard:common_moveset/back_step
execute if entity @s[tag=!T_Hard_Ske_Ranged,scores={T_Hard_Moveset1=40}] facing entity @p eyes rotated ~ 0 unless block ^ ^ ^-1 #t_hard:no_collision run function t_hard:common_moveset/leap_attack
execute if entity @s[tag=!T_Hard_Ske_Ranged,scores={T_Hard_Moveset1=40}] facing entity @p eyes rotated ~ 0 if block ^ ^-1 ^-3 #t_hard:no_collision run function t_hard:common_moveset/leap_attack
scoreboard players reset @s[scores={T_Hard_Moveset1=40..}] T_Hard_Moveset1

#前をチェックして飛びかかり
execute if entity @s[tag=T_Hard_Ske_Melee2] positioned ^ ^ ^-0.5 facing entity @p[distance=..16,tag=!T_Hard_Without] feet positioned ^ ^ ^0.5 if entity @s[distance=..0.22] run scoreboard players add @s T_Hard_Moveset2 1
#前方にブロックがあればスコアリセット
execute rotated ~ 0 unless block ^ ^ ^1 #t_hard:no_dig run scoreboard players reset @s T_Hard_Moveset2
execute rotated ~ 0 positioned ~ ~1 ~ unless block ^ ^ ^1 #t_hard:no_dig run scoreboard players reset @s T_Hard_Moveset2
scoreboard players set @s[scores={T_Hard_Moveset2=40}] Motion_Speed 8
execute if entity @s[scores={T_Hard_Moveset2=40}] rotated ~ 0 unless block ^ ^-1 ^2 #t_hard:no_collision run function t_hard:common_moveset/leap_attack
scoreboard players reset @s[scores={T_Hard_Moveset2=40..}] T_Hard_Moveset2

#段差飛び越え
function t_hard:common_moveset/jump_gap

#ドア破壊、ただしオプションで封じられてる場合を除く
execute if score #T_Hard_Gamerule T_Hard_Gamerule1 matches 1 run function t_hard:common_moveset/break_door

#水の中ですいすい
execute if entity @a[distance=..30,tag=!T_Hard_Without] if entity @s[nbt={HurtTime:0s}] if block ~ ~0.5 ~ #t_hard:liquid run function t_hard:common_moveset/swim