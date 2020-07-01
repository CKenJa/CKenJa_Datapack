
#--------------------------
#青き光子の刃・フォトンディスク
#--------------------------

#投げ スニークで投げると回転する
execute if entity @s[tag=ThWe_Photon0] at @s store result entity @s Rotation[0] float 1 run data get entity @p Rotation[0]
execute if entity @s[tag=ThWe_Photon0] at @s store result entity @s Rotation[1] float 1 run data get entity @p Rotation[1]
scoreboard players set @s[tag=ThWe_Photon0] Motion_Speed 5
tag @s[tag=ThWe_Photon0] remove ThWe_Photon0

#飛んでく
execute if entity @s[tag=!ThWe_Photon0,tag=!Return,tag=!Hit_Wall,tag=ThWe_PhAttack] at @s run summon area_effect_cloud ^ ^ ^0.1 {Duration:1,Radius:0f,Tags:[pos]}
execute if entity @s[tag=!ThWe_Photon0,tag=!Return,tag=!Hit_Wall,tag=ThWe_PhAttack] at @s run function throwing_weapons:col_move_ricochet
particle minecraft:dust 0.3 1 1 0.5 ~ ~0.55 ~ 0.2 0 0.2 0 3
particle minecraft:dust 0.5 1 1 0.5 ~ ~0.55 ~ 0.2 0 0.2 0 3

#ヒット
execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=!#throwing_weapons:unhurtable,type=!player,dx=0,nbt={Invulnerable:0b,HurtTime:0s}] run playsound minecraft:entity.player.attack.strong neutral @a ~ ~ ~ 1.5 1
execute positioned ~-0.5 ~-0.5 ~-0.5 run tag @e[type=!#throwing_weapons:unhurtable,type=!player,dx=0,nbt={Invulnerable:0b,HurtTime:0s}] add ThWe_Hit
execute positioned ~-0.5 ~-0.5 ~-0.5 run scoreboard players set @e[type=!#throwing_weapons:unhurtable,type=!player,dx=0,nbt={Invulnerable:0b,HurtTime:0s}] Motion_Speed -1
execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=!#throwing_weapons:unhurtable,type=!player,dx=0,nbt={Invulnerable:0b,HurtTime:0s}] run data modify entity @s Motion[1] set value 0.25d
execute positioned ~-0.5 ~-0.5 ~-0.5 run scoreboard players set @e[type=!#throwing_weapons:unhurtable,type=!player,dx=0,nbt={Invulnerable:0b,HurtTime:0s}] Damage 5
execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=!#throwing_weapons:unhurtable,type=!player,dx=0,nbt={Invulnerable:0b,HurtTime:0s}] run function throwing_weapons:damage

#スニーク投げで大回転
execute if entity @s[tag=!ThWe_Photon0,tag=!Return,tag=!Hit_Wall,tag=ThWe_PhCircle,scores={ThWe_Return=1}] at @s rotated ~ 0 run tp @s ^1.8 ^ ^-0.5
execute if entity @s[tag=!ThWe_Photon0,tag=!Return,tag=!Hit_Wall,tag=ThWe_PhCircle,scores={ThWe_Return=1..}] at @s rotated ~ 0 run tp @s ^ ^ ^1
execute if entity @s[tag=!ThWe_Photon0,tag=!Return,tag=!Hit_Wall,tag=ThWe_PhCircle,scores={ThWe_Return=1..}] at @s rotated ~ 0 run tp @s ~ ~ ~ ~30 ~

#スニークで呼び戻す
execute if entity @s[scores={ThWe_Return=5..},tag=!Return,tag=ThWe_PhAttack] at @a[scores={ThWe_Sneak=1..}] if score @s ScoreID2 = @p PlayerID run playsound minecraft:block.note_block.bit player @p ~ ~ ~ 1 2
execute if entity @s[scores={ThWe_Return=5..},tag=ThWe_PhAttack] at @a[scores={ThWe_Sneak=1..}] if score @s ScoreID2 = @p PlayerID run tag @s add Return

#音
scoreboard players add @s ThWe_Sound 1
execute if entity @s[scores={ThWe_Sound=4}] run playsound minecraft:entity.player.attack.sweep neutral @a ~ ~ ~ 1.5 1.5
execute if entity @s[scores={ThWe_Sound=4}] run playsound minecraft:entity.enderman.teleport neutral @a ~ ~ ~ 1.5 2
scoreboard players reset @s[scores={ThWe_Sound=4}] ThWe_Sound

#壁反射
execute if entity @s[tag=Hit_Wall] run playsound minecraft:entity.item.break neutral @a ~ ~ ~ 1.5 1.5
execute if entity @s[tag=Hit_Wall] run playsound minecraft:entity.blaze.hurt neutral @a ~ ~ ~ 1.5 2
execute if entity @s[tag=Hit_Wall] run particle minecraft:enchanted_hit ~ ~0.55 ~ 0 0 0 0.5 5
tag @s[tag=Hit_Wall] remove Hit_Wall

#戻ってこい！
scoreboard players add @s[tag=!Return] ThWe_Return 1
tag @s[tag=ThWe_PhAttack,scores={ThWe_Return=13..}] add Return
tag @s[tag=ThWe_PhCircle,scores={ThWe_Return=20..}] add Return
execute if entity @s[tag=Return,tag=!ThWe_Off] if score @s ScoreID2 = @p PlayerID positioned ~-0.5 ~-0.5 ~-0.5 if entity @p[dx=0,gamemode=!creative,gamemode=!spectator] run tag @p add Hold_PhDisc
execute if entity @s[tag=Return,tag=!ThWe_Off] if score @s ScoreID2 = @p PlayerID positioned ~-0.5 ~-0.5 ~-0.5 if entity @p[dx=0,gamemode=!creative,gamemode=!spectator] run give @p knowledge_book{Recipes:["minecraft:crafting_table"],display:{Name:'{"text":"Photon Disc Ver2.0","color":"gold","italic":false}',Lore:['{"text":"Category:Melee/Ranged","color":"gray","italic":false}','{"text":" ","color":"white","italic":false}','{"text":"[RClick: Throw]","color":"white","italic":false}','{"text":"[Sneak: Quick Return]","color":"white","italic":false}','{"text":"[Sneak+RClick: SpinAttack]","color":"white","italic":false}','{"text":" "}','{"text":"この光子の刃で敵を斬り裂け。","color":"white","italic":false}','{"text":"ディスクは敵を貫通し、地形で反射する。","color":"white","italic":false}','{"text":" "}','{"text":"Damage +7","color":"blue","italic":false}']},HideFlags:35,Unbreakable:1b,CustomModelData:4,ItemName:Photon_Disc_2,AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:6.5,Operation:0,UUIDLeast:539149,UUIDMost:862369,Slot:"mainhand"},{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-2.6,Operation:0,UUIDLeast:119966,UUIDMost:268925,Slot:"mainhand"}]}
execute if entity @s[tag=Return,tag=ThWe_Off] if score @s ScoreID2 = @p PlayerID positioned ~-0.5 ~-0.5 ~-0.5 if entity @p[dx=0,gamemode=!creative,gamemode=!spectator,nbt=!{Inventory:[{Slot:-106b}]}] run tag @p add Off_PhDisc
execute if entity @s[tag=Return,tag=ThWe_Off] if score @s ScoreID2 = @p PlayerID positioned ~-0.5 ~-0.5 ~-0.5 if entity @p[dx=0,gamemode=!creative,gamemode=!spectator,nbt={Inventory:[{Slot:-106b}]}] run give @p knowledge_book{Recipes:["minecraft:crafting_table"],display:{Name:'{"text":"Photon Disc Ver2.0","color":"gold","italic":false}',Lore:['{"text":"Category:Melee/Ranged","color":"gray","italic":false}','{"text":" ","color":"white","italic":false}','{"text":"[RClick: Throw]","color":"white","italic":false}','{"text":"[Sneak: Quick Return]","color":"white","italic":false}','{"text":"[Sneak+RClick: SpinAttack]","color":"white","italic":false}','{"text":" "}','{"text":"この光子の刃で敵を斬り裂け。","color":"white","italic":false}','{"text":"ディスクは敵を貫通し、地形で反射する。","color":"white","italic":false}','{"text":" "}','{"text":"Damage +7","color":"blue","italic":false}']},HideFlags:35,Unbreakable:1b,CustomModelData:4,ItemName:Photon_Disc_2,AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:6.5,Operation:0,UUIDLeast:539149,UUIDMost:862369,Slot:"mainhand"},{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-2.6,Operation:0,UUIDLeast:119966,UUIDMost:268925,Slot:"mainhand"}]}
execute if entity @s[tag=Return,tag=ThWe_Off] if score @s ScoreID2 = @p PlayerID positioned ~-0.5 ~-0.5 ~-0.5 if entity @p[dx=0,gamemode=!creative,gamemode=!spectator,nbt=!{Inventory:[{Slot:-106b}]}] run replaceitem entity @p weapon.offhand knowledge_book{Recipes:["minecraft:crafting_table"],display:{Name:'{"text":"Photon Disc Ver2.0","color":"gold","italic":false}',Lore:['{"text":"Category:Melee/Ranged","color":"gray","italic":false}','{"text":" ","color":"white","italic":false}','{"text":"[RClick: Throw]","color":"white","italic":false}','{"text":"[Sneak: Quick Return]","color":"white","italic":false}','{"text":"[Sneak+RClick: SpinAttack]","color":"white","italic":false}','{"text":" "}','{"text":"この光子の刃で敵を斬り裂け。","color":"white","italic":false}','{"text":"ディスクは敵を貫通し、地形で反射する。","color":"white","italic":false}','{"text":" "}','{"text":"Damage +7","color":"blue","italic":false}']},HideFlags:35,Unbreakable:1b,CustomModelData:4,ItemName:Photon_Disc_2,AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:6.5,Operation:0,UUIDLeast:539149,UUIDMost:862369,Slot:"mainhand"},{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-2.6,Operation:0,UUIDLeast:119966,UUIDMost:268925,Slot:"mainhand"}]}
execute if entity @s[tag=Return] if score @s ScoreID2 = @p PlayerID positioned ~-0.5 ~-0.5 ~-0.5 if entity @p[dx=0] run playsound minecraft:block.iron_door.open player @a ~ ~ ~ 1.5 2
execute if entity @s[tag=Return] positioned ~-0.5 ~-0.5 ~-0.5 if entity @p[dx=0] at @p run particle crit ~ ~1 ~ 0 0 0 0.5 10
execute if entity @s[tag=Return] if score @s ScoreID2 = @p PlayerID positioned ~-0.5 ~-0.5 ~-0.5 if entity @p[dx=0] run kill @s