scoreboard players add @s BulletRemain 1
#飛ばす
execute facing entity @p eyes run summon area_effect_cloud ^ ^ ^0.1 {Duration:1,Tags:["pos"]}
scoreboard players set @s[scores={BulletRemain=1}] Motion_Speed 25
execute if entity @s[scores={BulletRemain=1}] run function t_hard:move_fb
execute if entity @s[scores={BulletRemain=1..},tag=!T_Hard_NoHoming] run function t_hard:move_fb
kill @s[scores={BulletRemain=100}]
#パーティクル
particle flame ~ ~ ~ 0.1 0.1 0.1 0 1
#背後からホーミングはイヤじゃん
execute if entity @a[distance=..50] run tag @s add T_Hard_NoHoming
