#--------------------------
#自身を転送・エンダースロー
#--------------------------
execute if entity @s[tag=ThWe_Ender0] at @s store result entity @s Rotation[0] float 1 run data get entity @p Rotation[0]
execute if entity @s[tag=ThWe_Ender0] at @s store result entity @s Rotation[1] float 1 run data get entity @p Rotation[1]
scoreboard players set @s[tag=ThWe_Ender0] Motion_Speed 4
tag @s[tag=ThWe_Ender0] remove ThWe_Ender0

#飛んでく、途中で停止
execute if entity @s[tag=!ThWe_Ender0,tag=!Return,tag=!Hit_Wall,scores={ThWe_Return=..20}] at @s run summon area_effect_cloud ^ ^ ^0.1 {Duration:1,Radius:0f,Tags:[pos]}
execute if entity @s[tag=!ThWe_Ender0,tag=!Return,tag=!Hit_Wall,scores={ThWe_Return=..20}] run function throwing_weapons:col_move
execute if entity @s[tag=!ThWe_Ender0,tag=!Return,tag=!Hit_Wall,scores={ThWe_Return=20}] run data merge entity @s {NoGravity:1b}
particle minecraft:dust 1 0 1 0.5 ~ ~0.55 ~ 0.2 0 0.2 0 3
particle minecraft:dust 1 0.3 1 0.5 ~ ~0.55 ~ 0.2 0 0.2 0 3

#ヒット
execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=!#throwing_weapons:unhurtable,type=!player,dx=0,nbt={Invulnerable:0b,HurtTime:0s}] run playsound minecraft:entity.player.attack.strong neutral @a ~ ~ ~ 1.5 1
execute positioned ~-0.5 ~-0.5 ~-0.5 run tag @e[type=!#throwing_weapons:unhurtable,type=!player,dx=0,nbt={Invulnerable:0b,HurtTime:0s}] add ThWe_Hit
execute positioned ~-0.5 ~-0.5 ~-0.5 run scoreboard players set @e[type=!#throwing_weapons:unhurtable,type=!player,dx=0,nbt={Invulnerable:0b,HurtTime:0s}] Motion_Speed -2
execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=!#throwing_weapons:unhurtable,type=!player,dx=0,nbt={Invulnerable:0b,HurtTime:0s}] run data modify entity @s Motion[1] set value 0.3d
execute positioned ~-0.5 ~-0.5 ~-0.5 run scoreboard players set @e[type=!#throwing_weapons:unhurtable,type=!player,dx=0,nbt={Invulnerable:0b,HurtTime:0s}] Damage 5
execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=!#throwing_weapons:unhurtable,type=!player,dx=0,nbt={Invulnerable:0b,HurtTime:0s}] run function throwing_weapons:damage

#スニークでテレポート(着地するまで二回目はなし）
tag @a[tag=ThWe_Tired,nbt={OnGround:1b}] remove ThWe_Tired
execute if entity @s[scores={ThWe_Return=5..}] at @a[scores={ThWe_Sneak=1..},tag=!ThWe_Tired] if score @s ScoreID2 = @p PlayerID run particle minecraft:explosion ~ ~1 ~ 0 0 0 0 0
execute if entity @s[scores={ThWe_Return=5..}] at @a[scores={ThWe_Sneak=1..},tag=!ThWe_Tired] if score @s ScoreID2 = @p PlayerID run effect give @p minecraft:slow_falling 1 0
execute if entity @s[scores={ThWe_Return=5..}] at @a[scores={ThWe_Sneak=1..},tag=!ThWe_Tired] if score @s ScoreID2 = @p PlayerID run tp @p @s
execute if entity @s[scores={ThWe_Return=5..}] at @a[scores={ThWe_Sneak=1..},tag=!ThWe_Tired] if score @s ScoreID2 = @p PlayerID run particle minecraft:explosion ~ ~1 ~ 0 0 0 0 0
execute if entity @s[scores={ThWe_Return=5..}] at @a[scores={ThWe_Sneak=1..},tag=!ThWe_Tired] if score @s ScoreID2 = @p PlayerID run tag @s add Return
execute if entity @s[scores={ThWe_Return=5..}] at @a[scores={ThWe_Sneak=1..},tag=!ThWe_Tired] if score @s ScoreID2 = @p PlayerID run tag @p add ThWe_Tired

#離れすぎても戻ってくる
execute if entity @s at @a if score @s ScoreID2 = @p PlayerID unless entity @s[distance=..30] run tag @s add Return

#音
scoreboard players add @s ThWe_Sound 1
execute at @s[scores={ThWe_Sound=4}] run playsound minecraft:entity.player.attack.sweep neutral @a ~ ~ ~ 1.5 1.5
execute at @s[scores={ThWe_Sound=4}] run playsound minecraft:entity.enderman.teleport neutral @a ~ ~ ~ 1.5 2
scoreboard players reset @s[scores={ThWe_Sound=4}] ThWe_Sound

#壁ヒットで停止
scoreboard players set @s[tag=Hit_Wall,nbt=!{NoGravity:1b}] ThWe_Return 20
execute at @s[tag=Hit_Wall,nbt=!{NoGravity:1b}] run playsound minecraft:entity.item.break neutral @a ~ ~ ~ 1.5 1.5
execute at @s[tag=Hit_Wall,nbt=!{NoGravity:1b}] run playsound minecraft:entity.blaze.hurt neutral @a ~ ~ ~ 1.5 2
execute at @s[tag=Hit_Wall,nbt=!{NoGravity:1b}] run particle minecraft:crit ~ ~0.55 ~ 0 0 0 0.5 5
execute at @s[tag=Hit_Wall,nbt=!{NoGravity:1b}] run tp @s ^ ^ ^-0.5
execute if entity @s[tag=Hit_Wall,nbt=!{NoGravity:1b}] run data merge entity @s {NoGravity:1b}

#ワープで即座に戻ってくる
scoreboard players add @s[tag=!Return] ThWe_Return 1
tag @s[scores={ThWe_Return=40..}] add Return
execute if entity @s[tag=Return] at @a if score @s ScoreID2 = @p PlayerID run teleport @s ~ ~ ~
execute at @s[tag=Return] run playsound minecraft:entity.enderman.teleport neutral @a ~ ~ ~ 1.5 1
execute at @s[tag=Return,tag=!ThWe_Off] run tag @p add Hold_EnderThrow
execute at @s[tag=Return,tag=!ThWe_Off] run give @p[distance=..0.5,gamemode=!creative,gamemode=!spectator] knowledge_book{Recipes:["minecraft:crafting_table"],display:{Name:'{"text":"Ender Throw","color":"gold","italic":false}',Lore:['{"text":"Category:Melee/Ranged","color":"gray","italic":false}','{"text":" ","color":"white","italic":false}','{"text":"[RClick: Throw]","color":"white","italic":false}','{"text":"[Sneak: Teleport]","color":"white","italic":false}','{"text":" "}','{"text":"エンドの転移技術を応用したディスク。","color":"white","italic":false}','{"text":"投げたディスクにワープで移動しよう。","color":"white","italic":false}','{"text":" "}','{"text":"Damage +7","color":"blue","italic":false}']},HideFlags:35,Unbreakable:1b,CustomModelData:6,ItemName:Ender_Throw,AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:6.5,Operation:0,UUIDLeast:539149,UUIDMost:862369,Slot:"mainhand"},{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-2.6,Operation:0,UUIDLeast:119966,UUIDMost:268925,Slot:"mainhand"}]}
execute at @s[tag=Return,tag=ThWe_Off] run tag @p add Off_EnderThrow
execute at @s[tag=Return,tag=ThWe_Off] run give @p[distance=..0.5,gamemode=!creative,gamemode=!spectator,nbt={Inventory:[{Slot:-106b}]}] knowledge_book{Recipes:["minecraft:crafting_table"],display:{Name:'{"text":"Ender Throw","color":"gold","italic":false}',Lore:['{"text":"Category:Melee/Ranged","color":"gray","italic":false}','{"text":" ","color":"white","italic":false}','{"text":"[RClick: Throw]","color":"white","italic":false}','{"text":"[Sneak: Teleport]","color":"white","italic":false}','{"text":" "}','{"text":"エンドの転移技術を応用したディスク。","color":"white","italic":false}','{"text":"投げたディスクにワープで移動しよう。","color":"white","italic":false}','{"text":" "}','{"text":"Damage +7","color":"blue","italic":false}']},HideFlags:35,Unbreakable:1b,CustomModelData:6,ItemName:Ender_Throw,AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:6.5,Operation:0,UUIDLeast:539149,UUIDMost:862369,Slot:"mainhand"},{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-2.6,Operation:0,UUIDLeast:119966,UUIDMost:268925,Slot:"mainhand"}]}
execute at @s[tag=Return,tag=ThWe_Off] run replaceitem entity @p[distance=..0.5,gamemode=!creative,gamemode=!spectator,nbt=!{Inventory:[{Slot:-106b}]}] weapon.offhand knowledge_book{Recipes:["minecraft:crafting_table"],display:{Name:'{"text":"Ender Throw","color":"gold","italic":false}',Lore:['{"text":"Category:Melee/Ranged","color":"gray","italic":false}','{"text":" ","color":"white","italic":false}','{"text":"[RClick: Throw]","color":"white","italic":false}','{"text":"[Sneak: Teleport]","color":"white","italic":false}','{"text":" "}','{"text":"エンドの転移技術を応用したディスク。","color":"white","italic":false}','{"text":"投げたディスクにワープで移動しよう。","color":"white","italic":false}','{"text":" "}','{"text":"Damage +7","color":"blue","italic":false}']},HideFlags:35,Unbreakable:1b,CustomModelData:6,ItemName:Ender_Throw,AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:6.5,Operation:0,UUIDLeast:539149,UUIDMost:862369,Slot:"mainhand"},{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-2.6,Operation:0,UUIDLeast:119966,UUIDMost:268925,Slot:"mainhand"}]}
execute at @s[tag=Return] run playsound minecraft:block.iron_door.open player @a ~ ~ ~ 1.5 2
execute at @s[tag=Return] run particle minecraft:portal ~ ~1 ~ 0 0 0 0.5 10
execute at @s[tag=Return] run particle crit ~ ~1 ~ 0 0 0 0.5 10
kill @s[tag=Return]