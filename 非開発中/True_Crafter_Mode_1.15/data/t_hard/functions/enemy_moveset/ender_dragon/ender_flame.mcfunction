#エンドラの貫通ダメージ弾
execute as @s at @s run tp @s[tag=T_Hard_Shot0] ~ ~ ~ facing entity @p feet
execute as @s at @s run tp @s[tag=T_Hard_Shot0] ~ ~ ~ ~ ~-1
tag @s[tag=T_Hard_Shot0] remove T_Hard_Shot0

#直進
execute if entity @s[tag=T_Hard_Shot1,tag=!T_Hard_Shot0] at @s run tp @s ^0.015 ^ ^0.35
execute if entity @s[tag=T_Hard_Shot1,tag=!T_Hard_Shot0] at @s run tp @s ^0.015 ^ ^0.35
execute if entity @s[tag=T_Hard_Shot1,tag=!T_Hard_Shot0] at @s run tp @s ^0.015 ^ ^0.35
execute if entity @s[tag=T_Hard_Shot1,tag=!T_Hard_Shot0] at @s run tp @s ^0.015 ^ ^0.35

execute if entity @s[tag=T_Hard_Shot2,tag=!T_Hard_Shot0] at @s run tp @s ^ ^ ^0.35
execute if entity @s[tag=T_Hard_Shot2,tag=!T_Hard_Shot0] at @s run tp @s ^ ^ ^0.35
execute if entity @s[tag=T_Hard_Shot2,tag=!T_Hard_Shot0] at @s run tp @s ^ ^ ^0.35
execute if entity @s[tag=T_Hard_Shot2,tag=!T_Hard_Shot0] at @s run tp @s ^ ^ ^0.35

execute if entity @s[tag=T_Hard_Shot3,tag=!T_Hard_Shot0] at @s run tp @s ^-0.015 ^ ^0.35
execute if entity @s[tag=T_Hard_Shot3,tag=!T_Hard_Shot0] at @s run tp @s ^-0.015 ^ ^0.35
execute if entity @s[tag=T_Hard_Shot3,tag=!T_Hard_Shot0] at @s run tp @s ^-0.015 ^ ^0.35
execute if entity @s[tag=T_Hard_Shot3,tag=!T_Hard_Shot0] at @s run tp @s ^-0.015 ^ ^0.35

#パーティクル
particle minecraft:dust 1 0 1 1 ~ ~ ~ 0.1 0.1 0.1 0 5 force
particle minecraft:witch ~ ~ ~ 0.25 0.25 0.25 0 1

#ヒット判定
scoreboard players add @s BulletRemain 1
kill @e[tag=T_Hard_Shot,scores={BulletRemain=60..}] 
execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @a[dx=0] run tag @s add T_Hard_Hit
execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @a[dx=0] run tag @s add T_Hard_Hit_Player
execute unless block ^ ^ ^0.7 #t_hard:no_enderflame run tag @s add T_Hard_Hit
execute unless block ^ ^ ^0.7 #t_hard:no_enderflame run tag @s add T_Hard_Hit_Block
execute if entity @s[tag=T_Hard_Hit_Player] run effect give @p resistance 1 1 true
execute if entity @s[tag=T_Hard_Hit_Player] run effect give @p instant_damage 1
execute if entity @s[tag=T_Hard_Hit_Block] run setblock ^ ^ ^0.7 air destroy 
kill @s[tag=T_Hard_Hit]
