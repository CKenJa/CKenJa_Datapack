
#攻撃に反応してエンダーアイ召喚
execute if entity @s[nbt=!{HurtTime:0s},tag=!T_Hard_Cooldown] if entity @a[distance=..6,tag=!T_Hard_Without] run playsound minecraft:entity.enderman.scream hostile @a ~ ~ ~ 1.5 1
execute if entity @s[nbt=!{HurtTime:0s},tag=!T_Hard_Cooldown] if entity @a[distance=..6,tag=!T_Hard_Without] run particle minecraft:witch ~ ~2 ~ 0 0 0 1 10
execute if entity @s[nbt=!{HurtTime:0s},tag=!T_Hard_Cooldown] if entity @a[distance=..6,tag=!T_Hard_Without] run summon vex ~ ~1.5 ~ {CustomName:'{"text":"Ender Eye"}',DeathTime:19s,Silent:1b,Tags:["T_Hard_Ender_Eye"],ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{ItemEvent:T_Hard_Ender_Eye,SkullOwner:{Id:"1827d001-45fb-4f15-95fd-1a2d8dea5aa5",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvM2ExODRkMDljYTI2M2ZiMGNmOWQ5NzY4YzU0MzI3ZDI0NTkwZmFmYWQ5ZGM1NzI2MWE5NTI5Y2M3NGFmNjgxOCJ9fX0="}]}}}}],ArmorDropChances:[0.0F,0.0F,0.0F,1.0F],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:9999999,ShowParticles:0b}]}
execute if entity @s[nbt=!{HurtTime:0s},tag=!T_Hard_Cooldown] if entity @a[distance=..6,tag=!T_Hard_Without] run tag @s add T_Hard_Cooldown
#しばらくしたら召喚を再使用
scoreboard players add @s[tag=T_Hard_Cooldown] T_Hard_Moveset1 1
tag @s[scores={T_Hard_Moveset1=300}] remove T_Hard_Cooldown
scoreboard players reset @s[scores={T_Hard_Moveset1=300}] T_Hard_Moveset1

#目の前にブロックがあり、長いことプレイヤーが近くにいるならそれを破壊
execute if entity @a[distance=..6,tag=!T_Hard_Without] run scoreboard players add @s[tag=T_Hard_Cooldown] T_Hard_Moveset2 1
#ただしオプションで封じられてる場合を除く
execute if score #T_Hard_Gamerule T_Hard_Gamerule1 matches 0 run scoreboard players reset @s T_Hard_Moveset2
#スコアが30で破壊
execute if entity @s[scores={T_Hard_Moveset2=30..}] facing entity @p eyes rotated ~ 0 positioned ~ ~ ~ unless block ^1 ^ ^1 #t_hard:no_dig run setblock ^0.5 ^ ^ air destroy 
execute if entity @s[scores={T_Hard_Moveset2=30..}] facing entity @p eyes rotated ~ 0 positioned ~ ~ ~ unless block ^-1 ^ ^1 #t_hard:no_dig run setblock ^-0.5 ^ ^ air destroy 
execute if entity @s[scores={T_Hard_Moveset2=30..}] facing entity @p eyes rotated ~ 0 positioned ~ ~ ~ unless block ^ ^ ^1 #t_hard:no_dig run setblock ^ ^ ^1 air destroy 

execute if entity @s[scores={T_Hard_Moveset2=30..}] facing entity @p eyes rotated ~ 0 positioned ~ ~1 ~ unless block ^1 ^ ^1 #t_hard:no_dig run setblock ^0.5 ^ ^ air destroy 
execute if entity @s[scores={T_Hard_Moveset2=30..}] facing entity @p eyes rotated ~ 0 positioned ~ ~1 ~ unless block ^-1 ^ ^1 #t_hard:no_dig run setblock ^-0.5 ^ ^ air destroy 
execute if entity @s[scores={T_Hard_Moveset2=30..}] facing entity @p eyes rotated ~ 0 positioned ~ ~1 ~ unless block ^ ^ ^1 #t_hard:no_dig run setblock ^ ^ ^1 air destroy 

execute if entity @s[scores={T_Hard_Moveset2=30..}] facing entity @p eyes rotated ~ 0 positioned ~ ~2 ~ unless block ^1 ^ ^1 #t_hard:no_dig run setblock ^0.5 ^ ^ air destroy 
execute if entity @s[scores={T_Hard_Moveset2=30..}] facing entity @p eyes rotated ~ 0 positioned ~ ~2 ~ unless block ^-1 ^ ^1 #t_hard:no_dig run setblock ^-0.5 ^ ^ air destroy 
execute if entity @s[scores={T_Hard_Moveset2=30..}] facing entity @p eyes rotated ~ 0 positioned ~ ~2 ~ unless block ^ ^ ^1 #t_hard:no_dig run setblock ^ ^ ^1 air destroy 

scoreboard players reset @s[scores={T_Hard_Moveset2=30..}] T_Hard_Moveset2