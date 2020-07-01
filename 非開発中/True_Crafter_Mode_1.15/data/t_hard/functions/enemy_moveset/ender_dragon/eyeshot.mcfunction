#エンドラの貫通ダメージ弾
execute as @s at @s run tp @s[tag=T_Hard_Shot0] ~ ~ ~ facing entity @p feet
execute as @s at @s run tp @s[tag=T_Hard_Shot0] ~ ~ ~ ~ ~-2
tag @s[tag=T_Hard_Shot0] remove T_Hard_Shot0

#直進
execute if entity @s[tag=T_Hard_Shot2,tag=!T_Hard_Shot0] at @s run tp @s ^ ^ ^0.15
execute if entity @s[tag=T_Hard_Shot2,tag=!T_Hard_Shot0] at @s run tp @s ^ ^ ^0.15
execute if entity @s[tag=T_Hard_Shot2,tag=!T_Hard_Shot0] at @s run tp @s ^ ^ ^0.15
execute if entity @s[tag=T_Hard_Shot2,tag=!T_Hard_Shot0] at @s run tp @s ^ ^ ^0.15

#パーティクル
particle minecraft:dust 1 0 1 1 ~ ~ ~ 0 0 0 0 2 force

#ヒット判定
scoreboard players add @s BulletRemain 1
kill @e[tag=T_Hard_Shot,scores={BulletRemain=50..}] 
execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @a[dx=0] run tag @s add T_Hard_Hit
execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @a[dx=0] run tag @s add T_Hard_Hit_Player
execute unless block ^ ^ ^0.5 #t_hard:no_collision run tag @s add T_Hard_Hit
execute if entity @s[tag=T_Hard_Hit_Player] run effect give @p wither 1 2 true
kill @s[tag=T_Hard_Hit]
