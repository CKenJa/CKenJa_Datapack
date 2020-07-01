#--------------------------
#めっちゃ反射する・リコチェッター
#--------------------------

#投げ
execute if entity @s[tag=ThWe_Shear0] at @s store result entity @s Rotation[0] float 1 run data get entity @p Rotation[0]
execute if entity @s[tag=ThWe_Shear0] at @s store result entity @s Rotation[1] float 1 run data get entity @p Rotation[1]
scoreboard players set @s[tag=ThWe_Shear0] Motion_Speed 7
tag @s[tag=ThWe_Shear0] remove ThWe_Shear0

#飛んでく
execute if entity @s[tag=!ThWe_Shear0,tag=!Return,tag=!Hit_Wall] at @s run summon area_effect_cloud ^ ^ ^0.1 {Duration:1,Radius:0f,Tags:[pos]}
execute if entity @s[tag=!ThWe_Shear0,tag=!Return,tag=!Hit_Wall] run function throwing_weapons:move
particle minecraft:crit ~ ~0.55 ~ 0 0 0 0.25 1

#ヒット
execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=!#throwing_weapons:unhurtable,type=!player,dx=0,nbt={Invulnerable:0b,HurtTime:0s}] run playsound minecraft:entity.player.attack.strong neutral @a ~ ~ ~ 1.5 1
execute positioned ~-0.5 ~-0.5 ~-0.5 run tag @e[type=!#throwing_weapons:unhurtable,type=!player,dx=0,nbt={Invulnerable:0b,HurtTime:0s}] add ThWe_Hit
execute positioned ~-0.5 ~-0.5 ~-0.5 run tag @e[type=!#throwing_weapons:unhurtable,type=!player,dx=0] add ThWe_Disarming
execute positioned ~-0.5 ~-0.5 ~-0.5 run scoreboard players set @e[type=!#throwing_weapons:unhurtable,type=!player,dx=0,nbt={Invulnerable:0b,HurtTime:0s}] Motion_Speed -1
execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=!#throwing_weapons:unhurtable,type=!player,dx=0,nbt={Invulnerable:0b,HurtTime:0s}] run data modify entity @s Motion[1] set value 0.25d
execute positioned ~-0.5 ~-0.5 ~-0.5 run scoreboard players set @e[type=!#throwing_weapons:unhurtable,type=!player,dx=0,nbt={Invulnerable:0b,HurtTime:0s}] Damage 4
execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=!#throwing_weapons:unhurtable,type=!player,dx=0,nbt={Invulnerable:0b,HurtTime:0s}] run function throwing_weapons:damage
execute run tp @e[type=item,distance=..2] @s

#音
scoreboard players add @s ThWe_Sound 1
execute at @s[scores={ThWe_Sound=3}] run playsound minecraft:entity.sheep.shear player @a ~ ~ ~ 1.5 1.5
scoreboard players set @s[scores={ThWe_Sound=3}] ThWe_Sound 0

#戻ってこい！
scoreboard players add @s[tag=!Return] ThWe_Return 1
tag @s[scores={ThWe_Return=8..}] add Return
execute if entity @s[tag=Return,tag=!ThWe_Off] if score @s ScoreID2 = @p PlayerID positioned ~-0.5 ~-0.5 ~-0.5 if entity @p[dx=0,gamemode=!creative,gamemode=!spectator] run tag @p add Hold_Shearang
execute if entity @s[tag=Return,tag=!ThWe_Off] if score @s ScoreID2 = @p PlayerID positioned ~-0.5 ~-0.5 ~-0.5 if entity @p[dx=0,gamemode=!creative,gamemode=!spectator] run give @p knowledge_book{Recipes:["minecraft:crafting_table"],display:{Name:'{"text":"Shearang","color":"aqua","italic":false}',Lore:['{"text":"Category:Melee/Ranged","color":"gray","italic":false}','{"text":" ","color":"white","italic":false}','{"text":"[RClick: Throw]","color":"white","italic":false}','{"text":" "}','{"text":"風変わりな武器。ブーメランの一種だろうか？","color":"white","italic":false}','{"text":"投てき攻撃で相手の武器を奪うことができる。","color":"white","italic":false}','{"text":" "}','{"text":"Damage +5","color":"blue","italic":false}']},HideFlags:35,Unbreakable:1b,CustomModelData:7,ItemName:Shearang,AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:4.5,Operation:0,UUIDLeast:539149,UUIDMost:862369,Slot:"mainhand"},{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-2.2,Operation:0,UUIDLeast:119966,UUIDMost:268925,Slot:"mainhand"}]}
execute if entity @s[tag=Return,tag=ThWe_Off] if score @s ScoreID2 = @p PlayerID positioned ~-0.5 ~-0.5 ~-0.5 if entity @p[dx=0,gamemode=!creative,gamemode=!spectator,nbt={Inventory:[{Slot:-106b}]}] run tag @p add Hold_Shearang
execute if entity @s[tag=Return,tag=ThWe_Off] if score @s ScoreID2 = @p PlayerID positioned ~-0.5 ~-0.5 ~-0.5 if entity @p[dx=0,gamemode=!creative,gamemode=!spectator,nbt={Inventory:[{Slot:-106b}]}] run give @p knowledge_book{Recipes:["minecraft:crafting_table"],display:{Name:'{"text":"Shearang","color":"aqua","italic":false}',Lore:['{"text":"Category:Melee/Ranged","color":"gray","italic":false}','{"text":" ","color":"white","italic":false}','{"text":"[RClick: Throw]","color":"white","italic":false}','{"text":" "}','{"text":"風変わりな武器。ブーメランの一種だろうか？","color":"white","italic":false}','{"text":"投てき攻撃で相手の武器を奪うことができる。","color":"white","italic":false}','{"text":" "}','{"text":"Damage +5","color":"blue","italic":false}']},HideFlags:35,Unbreakable:1b,CustomModelData:7,ItemName:Shearang,AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:4.5,Operation:0,UUIDLeast:539149,UUIDMost:862369,Slot:"mainhand"},{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-2.2,Operation:0,UUIDLeast:119966,UUIDMost:268925,Slot:"mainhand"}]}
execute if entity @s[tag=Return,tag=ThWe_Off] if score @s ScoreID2 = @p PlayerID positioned ~-0.5 ~-0.5 ~-0.5 if entity @p[dx=0,gamemode=!creative,gamemode=!spectator,nbt=!{Inventory:[{Slot:-106b}]}] run replaceitem entity @p weapon.offhand knowledge_book{Recipes:["minecraft:crafting_table"],display:{Name:'{"text":"Shearang","color":"aqua","italic":false}',Lore:['{"text":"Category:Melee/Ranged","color":"gray","italic":false}','{"text":" ","color":"white","italic":false}','{"text":"[RClick: Throw]","color":"white","italic":false}','{"text":" "}','{"text":"風変わりな武器。ブーメランの一種だろうか？","color":"white","italic":false}','{"text":"投てき攻撃で相手の武器を奪うことができる。","color":"white","italic":false}','{"text":" "}','{"text":"Damage +5","color":"blue","italic":false}']},HideFlags:35,Unbreakable:1b,CustomModelData:7,ItemName:Shearang,AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:4.5,Operation:0,UUIDLeast:539149,UUIDMost:862369,Slot:"mainhand"},{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-2.2,Operation:0,UUIDLeast:119966,UUIDMost:268925,Slot:"mainhand"}]}
execute if entity @s[tag=Return] if score @s ScoreID2 = @p PlayerID positioned ~-0.5 ~-0.5 ~-0.5 if entity @p[dx=0] run playsound minecraft:block.note_block.hat player @a ~ ~ ~ 1.5 1
execute if entity @s[tag=Return] positioned ~-0.5 ~-0.5 ~-0.5 if entity @p[dx=0] at @p run particle crit ~ ~1 ~ 0 0 0 0.5 10
execute if entity @s[tag=Return] if score @s ScoreID2 = @p PlayerID positioned ~-0.5 ~-0.5 ~-0.5 if entity @p[dx=0] run kill @s
