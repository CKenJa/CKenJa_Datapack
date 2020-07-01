#--------------------------
#すごいなつかしい・グッドリーパー
#--------------------------

#投げ
execute if entity @s[tag=ThWe_Reaper0] if entity @s store result entity @s Rotation[0] float 1 run data get entity @p Rotation[0]
execute if entity @s[tag=ThWe_Reaper0] if entity @s store result entity @s Rotation[1] float 1 run data get entity @p Rotation[1]
scoreboard players set @s[tag=ThWe_Reaper0] Motion_Speed 3
tag @s[tag=ThWe_Reaper0] remove ThWe_Reaper0

#飛んでく
execute if entity @s[tag=!ThWe_Reaper0,tag=!Return,tag=!Hit_Wall] at @s run summon area_effect_cloud ^ ^ ^0.1 {Duration:1,Radius:0f,Tags:[pos]}
execute if entity @s[tag=!ThWe_Reaper0,tag=!Return,tag=!Hit_Wall] at @s run function throwing_weapons:col_move
particle minecraft:dust 1 0 1 1 ~ ~0.55 ~ 0.5 0.025 0.5 0 2 force
particle minecraft:witch ~ ~0.55 ~ 0.5 0.025 0.5 0 2


#ヒット
execute if entity @e[type=!#throwing_weapons:unhurtable,type=!player,distance=..2,nbt={Invulnerable:0b,HurtTime:0s}] run playsound minecraft:entity.player.attack.strong neutral @a ~ ~ ~ 1.5 1
tag @e[type=!#throwing_weapons:unhurtable,type=!player,distance=..2,nbt={Invulnerable:0b,HurtTime:0s}] add ThWe_Hit
scoreboard players set @e[type=!#throwing_weapons:unhurtable,type=!player,distance=..2,nbt={Invulnerable:0b,HurtTime:0s}] Motion_Speed -4
execute as @e[type=!#throwing_weapons:unhurtable,type=!player,distance=..2,nbt={Invulnerable:0b,HurtTime:0s}] run data modify entity @s Motion[1] set value 0.5d
scoreboard players set @e[type=!#throwing_weapons:unhurtable,type=!player,distance=..2,nbt={Invulnerable:0b,HurtTime:0s}] Damage 9
execute as @e[type=!#throwing_weapons:unhurtable,type=!player,distance=..2,nbt={Invulnerable:0b,HurtTime:0s}] run function throwing_weapons:damage

#スニークで呼び戻し大爆発
execute if entity @s[scores={ThWe_Return=5..}] at @a[scores={ThWe_Sneak=1..}] if score @s ScoreID2 = @p PlayerID run tag @s add ThWe_Reaper_Boom

#ドッカーン
execute if entity @s[tag=ThWe_Reaper_Boom,tag=!ThWe_Reaper_Boomed] run playsound minecraft:entity.generic.explode neutral @a ~ ~ ~ 2 0.8
execute if entity @s[tag=ThWe_Reaper_Boom,tag=!ThWe_Reaper_Boomed] run particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 0 0
execute if entity @s[tag=ThWe_Reaper_Boom,tag=!ThWe_Reaper_Boomed] run particle minecraft:witch ~ ~ ~ 1 1 1 0.5 150
execute if entity @s[tag=ThWe_Reaper_Boom,tag=!ThWe_Reaper_Boomed] run tag @e[type=!#throwing_weapons:unhurtable,type=!player,distance=..4,nbt={Invulnerable:0b,HurtTime:0s}] add ThWe_Hit
execute if entity @s[tag=ThWe_Reaper_Boom,tag=!ThWe_Reaper_Boomed] run scoreboard players set @e[type=!#throwing_weapons:unhurtable,type=!player,distance=..4,nbt={Invulnerable:0b,HurtTime:0s}] Motion_Speed -6
execute if entity @s[tag=ThWe_Reaper_Boom,tag=!ThWe_Reaper_Boomed] as @e[type=!#throwing_weapons:unhurtable,type=!player,distance=..4,nbt={Invulnerable:0b,HurtTime:0s}] run data modify entity @s Motion[1] set value 0.75d
execute if entity @s[tag=ThWe_Reaper_Boom,tag=!ThWe_Reaper_Boomed] run scoreboard players set @e[type=!#throwing_weapons:unhurtable,type=!player,distance=..4,nbt={Invulnerable:0b,HurtTime:0s}] Damage 9
execute if entity @s[tag=ThWe_Reaper_Boom,tag=!ThWe_Reaper_Boomed] as @e[type=!#throwing_weapons:unhurtable,type=!player,distance=..4,nbt={Invulnerable:0b,HurtTime:0s}] run function throwing_weapons:damage
execute if entity @s[tag=ThWe_Reaper_Boom,tag=!ThWe_Reaper_Boomed] run effect give @a[distance=..4] minecraft:instant_damage 1 1
tag @s[tag=ThWe_Reaper_Boom] add Return
tag @s[tag=ThWe_Reaper_Boom] add ThWe_Reaper_Boomed

#音
scoreboard players add @s ThWe_Sound 1
execute if entity @s[scores={ThWe_Sound=5}] run playsound minecraft:entity.player.attack.sweep neutral @a ~ ~ ~ 1.5 0.5
scoreboard players reset @s[scores={ThWe_Sound=5}] ThWe_Sound

#壁反射
execute if entity @s[tag=Hit_Wall] run particle minecraft:crit ~ ~0.55 ~ 0 0 0 0.5 2
tag @s[tag=Hit_Wall] remove Hit_Wall

#戻ってこい！
scoreboard players add @s[tag=!Return] ThWe_Return 1
tag @s[scores={ThWe_Return=30..}] add Return
execute if entity @s[tag=Return,tag=!ThWe_Off] if entity @s if score @s ScoreID2 = @p PlayerID positioned ~-0.5 ~-0.5 ~-0.5 if entity @p[dx=0,gamemode=!creative,gamemode=!spectator] run tag @p add Hold_Good_Reaper
execute if entity @s[tag=Return,tag=!ThWe_Off] if entity @s if score @s ScoreID2 = @p PlayerID positioned ~-0.5 ~-0.5 ~-0.5 if entity @p[dx=0,gamemode=!creative,gamemode=!spectator] run give @p knowledge_book{Recipes:["minecraft:crafting_table"],display:{Name:'{"text":"Re:The Good Reaper","color":"gold","italic":false}',Lore:['{"text":"Category:Melee/Ranged","color":"gray","italic":false}','{"text":" ","color":"white","italic":false}','{"text":"[RClick: Throw]","color":"white","italic":false}','{"text":"[Sneak: Quick Return]","color":"white","italic":false}','{"text":" "}','{"text":"帰ってきた立派な大鎌。相変わらずの大きさ。","color":"white","italic":false}','{"text":"やはり常人に扱える代物ではない気がする。","color":"white","italic":false}','{"text":" "}','{"text":"Damage +12","color":"blue","italic":false}']},HideFlags:35,Unbreakable:1b,CustomModelData:1,ItemName:Good_Reaper,AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:11.5,Operation:0,UUIDLeast:539149,UUIDMost:862369,Slot:"mainhand"},{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-3.5,Operation:0,UUIDLeast:119966,UUIDMost:268925,Slot:"mainhand"}]}
execute if entity @s[tag=Return,tag=ThWe_Off] if entity @s if score @s ScoreID2 = @p PlayerID positioned ~-0.5 ~-0.5 ~-0.5 if entity @p[dx=0,gamemode=!creative,gamemode=!spectator,nbt={Inventory:[{Slot:-106b}]}] run tag @p add Hold_Good_Reaper
execute if entity @s[tag=Return,tag=ThWe_Off] if entity @s if score @s ScoreID2 = @p PlayerID positioned ~-0.5 ~-0.5 ~-0.5 if entity @p[dx=0,gamemode=!creative,gamemode=!spectator,nbt={Inventory:[{Slot:-106b}]}] run give @p knowledge_book{Recipes:["minecraft:crafting_table"],display:{Name:'{"text":"Re:The Good Reaper","color":"gold","italic":false}',Lore:['{"text":"Category:Melee/Ranged","color":"gray","italic":false}','{"text":" ","color":"white","italic":false}','{"text":"[RClick: Throw]","color":"white","italic":false}','{"text":"[Sneak: Quick Return]","color":"white","italic":false}','{"text":" "}','{"text":"帰ってきた立派な大鎌。相変わらずの大きさ。","color":"white","italic":false}','{"text":"やはり常人に扱える代物ではない気がする。","color":"white","italic":false}','{"text":" "}','{"text":"Damage +12","color":"blue","italic":false}']},HideFlags:35,Unbreakable:1b,CustomModelData:1,ItemName:Good_Reaper,AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:11.5,Operation:0,UUIDLeast:539149,UUIDMost:862369,Slot:"mainhand"},{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-3.5,Operation:0,UUIDLeast:119966,UUIDMost:268925,Slot:"mainhand"}]}
execute if entity @s[tag=Return,tag=ThWe_Off] if entity @s if score @s ScoreID2 = @p PlayerID positioned ~-0.5 ~-0.5 ~-0.5 if entity @p[dx=0,gamemode=!creative,gamemode=!spectator,nbt=!{Inventory:[{Slot:-106b}]}] run replaceitem entity @p weapon.offhand knowledge_book{Recipes:["minecraft:crafting_table"],display:{Name:'{"text":"Re:The Good Reaper","color":"gold","italic":false}',Lore:['{"text":"Category:Melee/Ranged","color":"gray","italic":false}','{"text":" ","color":"white","italic":false}','{"text":"[RClick: Throw]","color":"white","italic":false}','{"text":"[Sneak: Quick Return]","color":"white","italic":false}','{"text":" "}','{"text":"帰ってきた立派な大鎌。相変わらずの大きさ。","color":"white","italic":false}','{"text":"やはり常人に扱える代物ではない気がする。","color":"white","italic":false}','{"text":" "}','{"text":"Damage +12","color":"blue","italic":false}']},HideFlags:35,Unbreakable:1b,CustomModelData:1,ItemName:Good_Reaper,AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:11.5,Operation:0,UUIDLeast:539149,UUIDMost:862369,Slot:"mainhand"},{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-3.5,Operation:0,UUIDLeast:119966,UUIDMost:268925,Slot:"mainhand"}]}
execute if entity @s[tag=Return] if entity @s if score @s ScoreID2 = @p PlayerID positioned ~-0.5 ~-0.5 ~-0.5 if entity @p[dx=0] run playsound minecraft:item.trident.return player @a ~ ~ ~ 1.5 0.5
execute if entity @s[tag=Return] positioned ~-0.5 ~-0.5 ~-0.5 if entity @p[dx=0] at @p run particle crit ~ ~1 ~ 0 0 0 0.5 10
execute if entity @s[tag=Return] if entity @s if score @s ScoreID2 = @p PlayerID positioned ~-0.5 ~-0.5 ~-0.5 if entity @p[dx=0] run kill @s
