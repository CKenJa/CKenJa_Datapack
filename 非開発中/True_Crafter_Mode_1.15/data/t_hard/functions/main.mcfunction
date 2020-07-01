#クリエとスペクテイターの奴を除外
execute as @a if entity @s[gamemode=!survival,gamemode=!adventure] run tag @s add T_Hard_Without
tag @a[gamemode=!spectator,gamemode=!creative] remove T_Hard_Without

#ゾンビ系
execute as @e[type=#t_hard:zombies,tag=!T_Hard_Already] at @s if entity @a[distance=..80] run function t_hard:spawn_event/zombie_speed_up
execute as @e[type=#t_hard:zombies,tag=!UniqueEnemy] at @s at @s if entity @a[distance=..30] run function t_hard:enemy_moveset/zombie

#スケルトン系
execute as @e[type=#minecraft:skeletons,tag=!T_Hard_Already] at @s if entity @a[distance=..80] run function t_hard:spawn_event/skeleton_weapon
execute as @e[type=#minecraft:skeletons,tag=!UniqueEnemy,type=!wither_skeleton] at @s if entity @a[distance=..30] run function t_hard:enemy_moveset/skeleton
execute as @e[type=wither_skeleton,tag=!UniqueEnemy] at @s if entity @a[distance=..30] run function t_hard:enemy_moveset/wither_skeleton

#スパイダー
execute as @e[type=spider,tag=!T_Hard_Already] at @s if entity @a[distance=..80] run function t_hard:spawn_event/spider_change
execute as @e[type=spider,tag=!UniqueEnemy] at @s if entity @a[distance=..30] run function t_hard:enemy_moveset/spider
#スパイダーのクモネット
execute as @e[tag=T_Hard_Net] at @s run function t_hard:enemy_moveset/spider_net

#ケイブスパイダー
execute as @e[type=cave_spider,tag=!UniqueEnemy] at @s if entity @a[distance=..30] run function t_hard:enemy_moveset/cave_spider
#ポイズンボール
execute as @e[tag=T_Hard_Poison_Ball] at @s if entity @a[distance=..30] run function t_hard:enemy_moveset/poison_ball

#クリーパー
execute as @e[type=creeper,tag=!T_Hard_Already] if entity @a[distance=..80] run function t_hard:spawn_event/creeper_speed_up
#(爆発無限、3回まで)
execute unless score #T_Hard_Gamerule T_Hard_Gamerule4 matches 2 run execute as @e[type=creeper] at @s if entity @a[distance=..30] run function t_hard:enemy_moveset/creeper
#(爆発バニラ)
execute if score #T_Hard_Gamerule T_Hard_Gamerule4 matches 2 run execute as @e[type=creeper] at @s if entity @a[distance=..30] run function t_hard:enemy_moveset/creeper_vanilla

#エンダーマン
execute as @e[type=enderman] at @s if entity @a[distance=..30] run function t_hard:enemy_moveset/enderman
execute as @e[type=enderman,tag=!T_Hard_Already] if entity @a[distance=..80] run function t_hard:spawn_event/enderman_armor

#エンダーアイ
execute as @e[tag=T_Hard_Ender_Eye] at @s if entity @a[distance=..30] run function t_hard:enemy_moveset/endereye
execute as @e[type=item,nbt={Item:{tag:{ItemEvent:T_Hard_Ender_Eye}}}] at @s run function t_hard:death_event/ender_eye

#ブレイズ
execute as @e[type=blaze] at @s if entity @a[distance=..80] run function t_hard:enemy_moveset/blaze
#ブレイズの火の玉
execute as @e[tag=T_Hard_Blazeball] at @s run function t_hard:enemy_moveset/blazeball

#スライム/マグマキューブ
execute as @e[type=slime] at @s if entity @a[distance=..30] run function t_hard:enemy_moveset/slime 
execute as @e[type=magma_cube] at @s if entity @a[distance=..30] run function t_hard:enemy_moveset/magma_cube

#敵ブロック
execute as @e[tag=T_Hard_Enemy_Block] at @s if entity @a[distance=..30] run function t_hard:enemy_moveset/enemy_block

#エヴォーカー
execute as @e[type=evoker] at @s if entity @a[distance=..30] run function t_hard:enemy_moveset/evoker

#ヴィンディケーター
execute as @e[type=vindicator,tag=!T_Hard_Already] at @s if entity @a[distance=..80] run function t_hard:spawn_event/vindicator_change
execute as @e[type=vindicator] at @s if entity @a[distance=..30] run function t_hard:enemy_moveset/vindicator

#ピリジャー
execute as @e[type=pillager,tag=!T_Hard_Already] if entity @a[distance=..80] run function t_hard:spawn_event/pillager_shield
execute as @e[type=illusioner] at @s if entity @a[distance=..30] run function t_hard:enemy_moveset/illusioner

#ウィッチ
execute as @e[type=witch] at @s if entity @a[distance=..30] run function t_hard:enemy_moveset/witch

#フロスト（ゲスト出演）
execute as @e[tag=T_Hard_Frost] at @s if entity @a[distance=..30] run function t_hard:enemy_moveset/frost
#フロスト死亡
execute as @e[type=item,nbt={Item:{tag:{ItemEvent:T_Hard_Frost}}}] at @s run function t_hard:death_event/frost

#フロストの弾
execute as @e[tag=T_Hard_FrostShot] at @s run function t_hard:enemy_moveset/frost_shot

#エンドラ
execute as @e[type=ender_dragon] at @s if entity @a[distance=0..] run function t_hard:enemy_moveset/ender_dragon/ender_dragon
#エンドラの使う技
execute as @e[tag=T_Hard_Dragonfire] at @s run function t_hard:enemy_moveset/ender_dragon/dragon_fireball
execute as @e[tag=T_Hard_DragonShot] at @s run function t_hard:enemy_moveset/ender_dragon/ender_flame
execute as @e[tag=T_Hard_EyeShot] at @s run function t_hard:enemy_moveset/ender_dragon/eyeshot
execute as @e[tag=T_Hard_Thunder_Place] at @s run function t_hard:enemy_moveset/ender_dragon/dragon_thunder_2
execute as @e[tag=T_Hard_Crystal_Place] at @s run function t_hard:enemy_moveset/ender_dragon/crystal_place
execute as @e[tag=T_Hard_Eye_Place] at @s run function t_hard:enemy_moveset/ender_dragon/summon_eyes_2
execute as @e[tag=T_Hard_Dragon_Eye] at @s if entity @a[distance=..30] run function t_hard:enemy_moveset/ender_dragon/dragon_eye

#T_Hard_Shielderタグ持ちなら矢を跳ね返す（共通タグ）
execute as @e[tag=T_Hard_Shielder] at @s if entity @e[type=arrow,nbt={inGround:0b,PierceLevel:0b},distance=..4] run data merge entity @s {Invulnerable:1b}
execute as @e[tag=T_Hard_Shielder] at @s unless entity @e[type=arrow,nbt={inGround:0b,PierceLevel:0b},distance=..4] run data merge entity @s {Invulnerable:0b}

#奈落キル
execute as @e[tag=T_Hard_GoVoid] run data merge entity @s {DeathTime:19s}
execute as @e[tag=T_Hard_GoVoid] at @s run tp @s ~ -1 ~
kill @e[tag=T_Hard_GoVoid]