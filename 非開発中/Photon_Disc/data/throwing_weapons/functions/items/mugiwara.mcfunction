#--------------------------
#麦わら帽子
#--------------------------
execute if entity @s[tag=ThWe_Mugiwara0] at @s store result entity @s Rotation[0] float 1 run data get entity @p Rotation[0]
execute if entity @s[tag=ThWe_Mugiwara0] at @s store result entity @s Rotation[1] float 1 run data get entity @p Rotation[1]
scoreboard players set @s[tag=ThWe_Mugiwara0] Motion_Speed 8
execute if entity @s[tag=ThWe_Mugiwara0] at @s run summon area_effect_cloud ^ ^ ^0.1 {Duration:1,Radius:0f,Tags:[pos]}
execute if entity @s[tag=ThWe_Mugiwara0] run function throwing_weapons:move
tag @s[tag=ThWe_Mugiwara0] remove ThWe_Mugiwara0

#飛んでく
particle minecraft:crit ~ ~1 ~ 0 0 0 0 1

#ヒット
execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=#throwing_weapons:straw_hat,dx=0] store result score @s Armor_Check run data get entity @s ArmorItems[3].Count
execute positioned ~-0.5 ~-0.5 ~-0.5 run tag @e[type=#throwing_weapons:straw_hat,dx=0,scores={Armor_Check=0}] add ThWe_Wear_2
execute if entity @s[scores={ThWe_Return=2..}] positioned ~-0.5 ~-0.5 ~-0.5 run tag @a[dx=0,nbt=!{Inventory:[{Slot:103b}]}] add ThWe_Wear_2
execute positioned ~-0.5 ~-0.5 ~-0.5 run replaceitem entity @e[tag=ThWe_Wear_2,dx=0] armor.head knowledge_book{Recipes:["minecraft:crafting_table"],display:{Name:'{"text":"Straw Hat","color":"white","italic":false}',Lore:['{"text":"Category:Hat","color":"gray","italic":false}','{"text":" ","color":"white","italic":false}','{"text":"[RClick: Throw]","color":"white","italic":false}','{"text":"[Sneak: Wear]","color":"white","italic":false}','{"text":" "}','{"text":"至って普通の麦わら帽子。かぶって日差しを防ごう。","color":"white","italic":false}','{"text":"なぜか投げつける事ができるが、特に意味はない。","color":"white","italic":false}']},HideFlags:39,Unbreakable:1b,CustomModelData:9,ItemName:Mugiwara,AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:0.0,Operation:0,UUIDLeast:539149,UUIDMost:862369,Slot:"mainhand"}]}
execute positioned ~-0.5 ~-0.5 ~-0.5 run data modify entity @e[tag=ThWe_Wear_2,dx=0,limit=1] ArmorDropChances[3] set value 1.0f
execute positioned ~-0.5 ~-0.5 ~-0.5 run scoreboard players reset @e[tag=ThWe_Wear_2,dx=0] Armor_Check
execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[tag=ThWe_Wear_2,dx=0] run kill @s
#音
scoreboard players add @s ThWe_Sound 1
execute at @s[scores={ThWe_Sound=4}] run playsound minecraft:entity.player.attack.sweep neutral @a ~ ~ ~ 0.5 2
scoreboard players set @s[scores={ThWe_Sound=4}] ThWe_Sound 0

scoreboard players add @s ThWe_Return 1
execute at @s[nbt={OnGround:1b}] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:knowledge_book",Count:1b,tag:{Recipes:["minecraft:crafting_table"],display:{Name:'{"text":"Straw Hat","color":"white","italic":false}',Lore:['{"text":"Category:Hat","color":"gray","italic":false}','{"text":" ","color":"white","italic":false}','{"text":"[RClick: Throw]","color":"white","italic":false}','{"text":"[Sneak: Wear]","color":"white","italic":false}','{"text":" "}','{"text":"至って普通の麦わら帽子。かぶって日差しを防ごう。","color":"white","italic":false}','{"text":"なぜか投げつける事ができるが、特に意味はない。","color":"white","italic":false}']},HideFlags:39,Unbreakable:1b,CustomModelData:9,ItemName:Mugiwara,AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:0.0,Operation:0,UUIDLeast:539149,UUIDMost:862369,Slot:"mainhand"}]}}}
kill @s[nbt={OnGround:1b}]