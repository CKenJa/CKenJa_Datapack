#謎のパワーで落下ダメージ無効化
data modify entity @s[nbt={OnGround:0b}] FallDistance set value 0.0f

#前をチェックして飛びかかり
execute positioned ^ ^ ^-0.5 facing entity @e[type=#t_hard:human,distance=..16,limit=1,sort=nearest] feet positioned ^ ^ ^0.5 if entity @s[distance=..0.22] run scoreboard players add @s T_Hard_Moveset1 1
#前方にブロックがあればスコアリセット
execute rotated ~ 0 unless block ^ ^ ^1 #t_hard:no_collision run scoreboard players reset @s T_Hard_Moveset1
execute rotated ~ 0 positioned ~ ~1 ~ unless block ^ ^ ^1 #t_hard:no_collision run scoreboard players reset @s T_Hard_Moveset1
scoreboard players set @s[scores={T_Hard_Moveset1=40}] Motion_Speed 10
execute if entity @s[scores={T_Hard_Moveset1=40}] rotated ~ 0 unless block ^ ^-1 ^2 #t_hard:no_collision run function t_hard:common_moveset/leap_attack
scoreboard players reset @s[scores={T_Hard_Moveset1=40..}] T_Hard_Moveset1

#オプションで封じられてなければブロック設置
execute if score #T_Hard_Gamerule T_Hard_Gamerule2 matches 1 run function t_hard:common_moveset/enemy_block_place

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

#静止していてれば上下のブロック破壊
execute if entity @s[scores={T_Hard_Dig=40,T_Hard_Y_Check=..-1},nbt={OnGround:1b,Motion:[0.0,-0.0784000015258789d,0.0]}] if entity @a[distance=..7,tag=!T_Hard_Without] unless block ~ ~2 ~ #t_hard:no_dig run setblock ~ ~2 ~ air destroy 
execute if entity @s[scores={T_Hard_Dig=40,T_Hard_Y_Check=1..},nbt={OnGround:1b,Motion:[0.0,-0.0784000015258789d,0.0]}] if entity @a[distance=..7,tag=!T_Hard_Without] unless block ~ ~-1 ~ #t_hard:no_dig run setblock ~ ~-1 ~ air destroy 

#付近にプレイヤーがいなければY座標を消去
execute unless entity @a[distance=..16,tag=!T_Hard_Without] run scoreboard players reset @s T_Hard_Y_Check 
execute unless entity @a[distance=..16,tag=!T_Hard_Without] run scoreboard players reset @s T_Hard_Dig
#採掘カウント削除
scoreboard players reset @s[scores={T_Hard_Dig=40..}] T_Hard_Dig

#段差飛び越え
function t_hard:common_moveset/jump_gap

#ドア破壊、ただしオプションで封じられてる場合を除く
execute if score #T_Hard_Gamerule T_Hard_Gamerule1 matches 1 run function t_hard:common_moveset/break_door

#泳ぐ
execute if entity @a[distance=..30,tag=!T_Hard_Without] if entity @s[type=!drowned,nbt={HurtTime:0s}] if block ~ ~0.5 ~ #t_hard:liquid run function t_hard:common_moveset/swim