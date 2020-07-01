
#クリーパー
#プレイヤーが微妙な距離にいるなら透明化、近くにいれば解除
execute at @s[nbt=!{ignited:1b},nbt={HurtTime:0s},tag=!T_Hard_StealthNow,tag=!T_Hard_Ignited] if entity @a[distance=4..16,tag=!T_Hard_Without] run particle smoke ~ ~1 ~ 0.25 0.5 0.25 0 25
execute at @s[nbt=!{ignited:1b},nbt={HurtTime:0s},tag=!T_Hard_Ignited] if entity @a[distance=4..16,tag=!T_Hard_Without] run effect give @s minecraft:invisibility 1 0
execute at @s[nbt=!{ignited:1b},nbt={HurtTime:0s},tag=!T_Hard_Ignited] if entity @a[distance=4..16,tag=!T_Hard_Without] run particle smoke ~ ~ ~ 0.25 0 0.25 0 1
execute at @s[nbt=!{ignited:1b},nbt={HurtTime:0s},tag=!T_Hard_Ignited] if entity @a[distance=4..16,tag=!T_Hard_Without] run data merge entity @s {Fire:-1s}
execute at @s[nbt=!{ignited:1b},nbt={HurtTime:0s},tag=!T_Hard_Ignited] if entity @a[distance=4..16,tag=!T_Hard_Without] run tag @s add T_Hard_StealthNow
execute at @s if entity @a[distance=..4] run effect clear @s minecraft:invisibility
execute at @s[nbt=!{ignited:1b},tag=T_Hard_StealthNow] if entity @a[distance=..4,tag=!T_Hard_Without] run particle smoke ~ ~1 ~ 0.25 0.5 0.25 0 25
execute at @s[nbt=!{ignited:1b},tag=T_Hard_StealthNow] if entity @a[distance=..4,tag=!T_Hard_Without] run tag @s remove T_Hard_StealthNow

#自爆の代わりにその場で爆発を起こす　帯電時はちゃっかり強化
execute if entity @a[nbt=!{ignited:1b},distance=..3,tag=!T_Hard_Without,nbt={Motion:[0.0,-0.0784000015258789d,0.0]}] run tag @s add T_Hard_Ignited
scoreboard players add @s[nbt=!{ignited:1b},tag=T_Hard_Ignited] T_Hard_Moveset1 1
effect give @s[scores={T_Hard_Moveset1=30..}] resistance 1 4 true

execute if entity @s[nbt=!{powered:1b},scores={T_Hard_Moveset1=30}] run summon fireball ~ ~1 ~ {Tags:["Explosion_Ball"],ExplosionPower:3,direction:[0.0,-3.0,0.0]} 
execute if entity @s[nbt={powered:1b},scores={T_Hard_Moveset1=30}] run summon fireball ~ ~1 ~ {Tags:["Explosion_Ball"],ExplosionPower:4,direction:[0.0,-3.0,0.0]} 
#難易度によっては3回で死ぬ
execute if score #T_Hard_Gamerule T_Hard_Gamerule4 matches 1 run scoreboard players add @s[scores={T_Hard_Moveset1=30}] T_Hard_Moveset3 1
tp @s[scores={T_Hard_Moveset3=3}] ~ -1 ~
kill @s[scores={T_Hard_Moveset3=3}]

scoreboard players reset @s[scores={T_Hard_Moveset1=45..}] T_Hard_Moveset1
execute unless entity @a[distance=..7] run scoreboard players reset @s T_Hard_Moveset1
execute unless entity @a[nbt=!{ignited:1b},distance=..7,tag=!T_Hard_Without] run tag @s remove T_Hard_Ignited

#起爆中なら近くのエンティティを逃がす
execute if entity @s[tag=T_Hard_Ignited] as @e[distance=0.1..6,type=#t_hard:hostiles] at @s run function t_hard:common_moveset/dodge_creeper

#着火されちゃった場合はFuseを30に
data merge entity @s[nbt={ignited:1b}] {Fuse:30} 
tag @s[nbt={ignited:1b}] add T_Hard_Ignited

#T_Hard_Powerdタグ持ってるなら雷を自分に
scoreboard players add @s[tag=T_Hard_Powered,nbt=!{powered:1b}] T_Hard_Moveset2 1
execute if entity @s[tag=T_Hard_Powered,nbt=!{powered:1b}] run particle enchanted_hit ~ ~0.5 ~ 0.25 0.5 0.25 0 1
effect give @s[scores={T_Hard_Moveset2=60}] resistance 1 4 true
effect give @s[scores={T_Hard_Moveset2=60}] fire_resistance 10 0
execute at @s[scores={T_Hard_Moveset2=60}] run summon lightning_bolt ~ ~ ~
scoreboard players reset @s[scores={T_Hard_Moveset2=60}] T_Hard_Moveset2

#段差飛び越え
function t_hard:common_moveset/jump_gap

#ドア破壊、ただしオプションで封じられてる場合を除く
execute if score #T_Hard_Gamerule T_Hard_Gamerule1 matches 1 run function t_hard:common_moveset/break_door