
#近づかれたらできるだけ距離を取ろうとする
execute if entity @s[nbt={HandItems:[{id:"minecraft:crossbow",Count:1b,tag:{Charged:1b}},{}]}] if entity @a[distance=..5,tag=!T_Hard_Without] run scoreboard players set @s Motion_Speed 3
execute if entity @s[nbt={HandItems:[{id:"minecraft:crossbow",Count:1b,tag:{Charged:1b}},{}]}] if entity @a[distance=..5,tag=!T_Hard_Without] rotated ~ 0 if block ^ ^ ^-1 #t_hard:no_collision_safe run function t_hard:common_moveset/ranged_move
execute if entity @s[nbt={HandItems:[{id:"minecraft:crossbow",Count:1b,tag:{Charged:1b}},{}]}] if entity @a[distance=..5,tag=!T_Hard_Without] rotated ~ 0 unless block ^ ^ ^-1 #t_hard:no_collision_safe run function t_hard:common_moveset/dash

#段差飛び越え
function t_hard:common_moveset/jump_gap

#ドア破壊、ただしオプションで封じられてる場合を除く
execute if score #T_Hard_Gamerule T_Hard_Gamerule1 matches 1 run function t_hard:common_moveset/break_door

#水の中ですいすい
execute if entity @a[distance=..30,tag=!T_Hard_Without] if entity @s[nbt={HurtTime:0s}] if block ~ ~0.5 ~ #t_hard:liquid run function t_hard:common_moveset/swim