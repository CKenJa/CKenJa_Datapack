#スラッシュパルス
execute as @s[tag=SlashShot0] run data modify entity @s Rotation set from entity @p Rotation
execute at @s run tp @s[tag=SlashShot0] ~ ~ ~ ~-1.5 ~

#パーティクル
tp @s[tag=SlashShot,tag=!SlashShot0] ^ ^ ^1.5

execute unless entity @s[tag=SlashShot0] run particle minecraft:dust 0.3 1 1 1 ^ ^ ^-2 0 0 0 0 1
execute unless entity @s[tag=SlashShot0] run particle minecraft:dust 0.4 1 1 1 ^ ^0.2 ^-1 0 0 0 0 1
execute unless entity @s[tag=SlashShot0] run particle minecraft:dust 0.5 1 1 1 ~ ~0.4 ~ 0 0 0 0 1
execute unless entity @s[tag=SlashShot0] run particle minecraft:dust 0.4 1 1 1 ^ ^0.6 ^-1 0 0 0 0 1
execute unless entity @s[tag=SlashShot0] run particle minecraft:dust 0.3 1 1 1 ^ ^0.8 ^-2 0 0 0 0 1

#ヒット判定
execute positioned ~-0.5 ~-0.5 ~-0.5 run scoreboard players set @e[type=!#drone:unhurtable,type=!player,dx=0,nbt={HurtTime:0s}] Damage 5
execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=!#drone:unhurtable,type=!player,dx=0,nbt={HurtTime:0s}] run function chuz_common:score_damage

#時間経過で消える
scoreboard players add @s BulletRemain 1 
kill @s[scores={BulletRemain=15}]

#タグ削除
tag @s[tag=SlashShot0] remove SlashShot0
