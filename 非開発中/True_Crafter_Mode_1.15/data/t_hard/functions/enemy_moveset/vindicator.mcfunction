
#前をチェックして飛びかかり
execute positioned ^ ^ ^-0.5 facing entity @e[type=#t_hard:human,distance=5..16,limit=1,sort=nearest] feet positioned ^ ^ ^0.5 if entity @s[distance=..0.22] run scoreboard players add @s[nbt={OnGround:1b}] T_Hard_Moveset1 1
scoreboard players set @s[scores={T_Hard_Moveset1=40}] Motion_Speed 6
execute if entity @s[scores={T_Hard_Moveset1=40}] rotated ~ 0 unless block ^ ^-1 ^2 #t_hard:no_collision run function t_hard:common_moveset/leap_attack
scoreboard players reset @s[scores={T_Hard_Moveset1=40..}] T_Hard_Moveset1

#近接当てたら即座にバックステップ
execute if entity @a[distance=..2,nbt=!{HurtTime:0s}] run scoreboard players set @s T_Hard_Moveset2 59
#時々バクステで距離を取る
execute if entity @a[distance=..5,tag=!T_Hard_Without] run scoreboard players add @s T_Hard_Moveset2 1
scoreboard players set @s[scores={T_Hard_Moveset2=60}] Motion_Speed 7
execute if entity @s[scores={T_Hard_Moveset2=60..}] facing entity @p eyes rotated ~ 0 unless block ^ ^-1 ^-3 #t_hard:no_collision if block ^ ^ ^-1 #t_hard:no_collision run function t_hard:common_moveset/back_step
execute if entity @s[scores={T_Hard_Moveset2=60..}] facing entity @p eyes rotated ~ 0 unless block ^ ^ ^-1 #t_hard:no_collision run function t_hard:common_moveset/leap_attack
execute if entity @s[scores={T_Hard_Moveset2=60..}] facing entity @p eyes rotated ~ 0 if block ^ ^-1 ^-3 #t_hard:no_collision run function t_hard:common_moveset/leap_attack
scoreboard players reset @s[scores={T_Hard_Moveset2=60..}] T_Hard_Moveset2
execute unless entity @a[distance=..5,tag=!T_Hard_Without] run scoreboard players reset @s[scores={T_Hard_Moveset2=60..}] T_Hard_Moveset2

#静止していて、なおかつプレイヤーが近ければその方向のブロック破壊
execute if entity @s[nbt={OnGround:1b,Motion:[0.0,-0.0784000015258789d,0.0]}] if entity @a[distance=..20,tag=!T_Hard_Without] run scoreboard players add @s T_Hard_Dig 1
#ただしオプションで封じられてる場合を除く
execute if score #T_Hard_Gamerule T_Hard_Gamerule1 matches 0 run scoreboard players reset @s T_Hard_Dig
#T_Hard_Digが40になったらブロック粉々
execute if entity @s[scores={T_Hard_Dig=40},nbt={OnGround:1b,Motion:[0.0,-0.0784000015258789d,0.0]}] facing entity @p[distance=..16] eyes rotated ~ 0 positioned ~ ~ ~ unless block ^1 ^ ^1 #t_hard:no_dig run setblock ^0.5 ^ ^ air destroy 
execute if entity @s[scores={T_Hard_Dig=40},nbt={OnGround:1b,Motion:[0.0,-0.0784000015258789d,0.0]}] facing entity @p[distance=..16] eyes rotated ~ 0 positioned ~ ~ ~ unless block ^-1 ^ ^1 #t_hard:no_dig run setblock ^-0.5 ^ ^ air destroy 
execute if entity @s[scores={T_Hard_Dig=40},nbt={OnGround:1b,Motion:[0.0,-0.0784000015258789d,0.0]}] facing entity @p[distance=..16] eyes rotated ~ 0 positioned ~ ~ ~ unless block ^ ^ ^1 #t_hard:no_dig run setblock ^ ^ ^1 air destroy 
execute if entity @s[scores={T_Hard_Dig=40},nbt={OnGround:1b,Motion:[0.0,-0.0784000015258789d,0.0]}] facing entity @p[distance=..16] eyes rotated ~ 0 positioned ~ ~1 ~ unless block ^ ^ ^1 #t_hard:no_dig run setblock ^ ^ ^1 air destroy 
execute if entity @s[scores={T_Hard_Dig=40},nbt={OnGround:1b,Motion:[0.0,-0.0784000015258789d,0.0]}] facing entity @p[distance=..16] eyes rotated ~ 0 positioned ~ ~1 ~ unless block ^1 ^ ^1 #t_hard:no_dig run setblock ^0.5 ^ ^ air destroy 
execute if entity @s[scores={T_Hard_Dig=40},nbt={OnGround:1b,Motion:[0.0,-0.0784000015258789d,0.0]}] facing entity @p[distance=..16] eyes rotated ~ 0 positioned ~ ~1 ~ unless block ^-1 ^ ^1 #t_hard:no_dig run setblock ^-0.5 ^ ^ air destroy 
scoreboard players reset @s[nbt=!{Motion:[0.0,-0.0784000015258789d,0.0]}] T_Hard_Dig 

#採掘カウント削除
scoreboard players reset @s[scores={T_Hard_Dig=40..}] T_Hard_Dig

#段差飛び越え
function t_hard:common_moveset/jump_gap

#ドア破壊、ただしオプションで封じられてる場合を除く
execute if score #T_Hard_Gamerule T_Hard_Gamerule1 matches 1 run function t_hard:common_moveset/break_door

#水の中ですいすい
execute if entity @a[distance=..30,tag=!T_Hard_Without] if entity @s[nbt={HurtTime:0s}] if block ~ ~0.5 ~ #t_hard:liquid run function t_hard:common_moveset/swim