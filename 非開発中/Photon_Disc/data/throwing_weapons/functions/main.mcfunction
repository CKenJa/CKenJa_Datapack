
#--------------------------
#青き光子の刃・フォトンディスク
#--------------------------

#タグ付与
tag @a[nbt={SelectedItem:{tag:{ItemName:Photon_Disc_2}}}] add Hold_PhDisc
tag @a[nbt={Inventory:[{Slot:-106b,tag:{ItemName:Photon_Disc_2}}]}] add Off_PhDisc

#投げ スニークで投げると回転する
execute as @a[tag=Hold_PhDisc,scores={ThWe_Throw=1..}] unless entity @s[scores={ThWe_Sneak=1..}] at @s run summon armor_stand ~ ~1.05 ~ {PortalCooldown:999999,Small:1b,Silent:1b,Invisible:1b,Tags:["ThWe_Photon","ThWe_Photon0","NeedID","WallHitBox","WHB0","ThWe_PhAttack","ThWe_Spin"],Pose:{Head:[0.1f,0.1f,0.1f]},DisabledSlots:4144959,ArmorItems:[{id:"minecraft:command_block",Count:1b},{},{},{id:"minecraft:knowledge_book",Count:1b,tag:{CustomModelData:4}}]}
execute as @a[tag=Hold_PhDisc,scores={ThWe_Throw=1..,ThWe_Sneak=1..}] at @s run summon armor_stand ~ ~0.5 ~ {PortalCooldown:999999,Small:1b,Silent:1b,Invisible:1b,Tags:["ThWe_Photon","ThWe_Photon0","NeedID","WallHitBox","WHB0","ThWe_PhCircle","ThWe_Spin"],Pose:{Head:[0.1f,0.1f,0.1f]},DisabledSlots:4144959,ArmorItems:[{id:"minecraft:command_block",Count:1b},{},{},{id:"minecraft:knowledge_book",Count:1b,tag:{CustomModelData:4}}]}
execute at @a[tag=Hold_PhDisc,scores={ThWe_Throw=1..}] run playsound minecraft:entity.arrow.shoot player @a ~ ~ ~ 1.5 0

#オフハンド投擲 戻ってくる時にオフハンドに入る
execute as @a[nbt=!{Inventory:[{Slot:-106b,tag:{ItemName:Photon_Disc_2}}]},tag=Off_PhDisc,scores={ThWe_Throw=1..}] unless entity @s[scores={ThWe_Sneak=1..}] at @s run summon armor_stand ~ ~1.05 ~ {PortalCooldown:999999,Small:1b,Silent:1b,Invisible:1b,Tags:["ThWe_Photon","ThWe_Photon0","NeedID","WallHitBox","WHB0","ThWe_PhAttack","ThWe_Spin","ThWe_Off"],Pose:{Head:[0.1f,0.1f,0.1f]},DisabledSlots:4144959,ArmorItems:[{id:"minecraft:command_block",Count:1b},{},{},{id:"minecraft:knowledge_book",Count:1b,tag:{CustomModelData:4}}]}
execute as @a[nbt=!{Inventory:[{Slot:-106b,tag:{ItemName:Photon_Disc_2}}]},tag=Off_PhDisc,scores={ThWe_Throw=1..,ThWe_Sneak=1..}] at @s run summon armor_stand ~ ~0.5 ~ {PortalCooldown:999999,Small:1b,Silent:1b,Invisible:1b,Tags:["ThWe_Photon","ThWe_Photon0","NeedID","WallHitBox","WHB0","ThWe_PhCircle","ThWe_Spin","ThWe_Off"],Pose:{Head:[0.1f,0.1f,0.1f]},DisabledSlots:4144959,ArmorItems:[{id:"minecraft:command_block",Count:1b},{},{},{id:"minecraft:knowledge_book",Count:1b,tag:{CustomModelData:4}}]}
execute at @a[nbt=!{Inventory:[{Slot:-106b,tag:{ItemName:Photon_Disc_2}}]},tag=Off_PhDisc,scores={ThWe_Throw=1..}] run playsound minecraft:entity.arrow.shoot player @a ~ ~ ~ 1.5 0

#タグ削除
tag @a[nbt=!{SelectedItem:{tag:{ItemName:Photon_Disc_2}}}] remove Hold_PhDisc
tag @a[nbt=!{Inventory:[{Slot:-106b,tag:{ItemName:Photon_Disc_2}}]}] remove Off_PhDisc

#アイテム動作フロー
execute as @e[tag=ThWe_Photon] at @s run function throwing_weapons:items/phothon_disc_2

#戻ってくる
execute as @a at @e[tag=Return,tag=ThWe_Photon] if score @s PlayerID = @e[limit=1,sort=nearest] ScoreID2 run teleport @e[limit=1,sort=nearest] ^ ^ ^0.75 facing entity @s eyes
execute as @a at @e[tag=Return,tag=ThWe_Photon] if score @s PlayerID = @e[limit=1,sort=nearest] ScoreID2 run teleport @e[limit=1,sort=nearest] ^ ^ ^0.75 facing entity @s feet

#クラフト
execute as @e[tag=Custom_Crafter_Crafting] at @s if block ~ ~-0.5 ~ minecraft:dropper{Items:[{Slot:0b,id:"minecraft:diamond",Count:1b},{Slot:1b,id:"minecraft:iron_ingot",Count:1b},{Slot:2b,id:"minecraft:obsidian",Count:1b},{Slot:3b,id:"minecraft:light_blue_stained_glass",Count:1b},{Slot:4b,id:"minecraft:ender_eye",Count:1b},{Slot:5b,id:"minecraft:light_blue_stained_glass",Count:1b},{Slot:6b,id:"minecraft:obsidian",Count:1b},{Slot:7b,id:"minecraft:iron_ingot",Count:1b},{Slot:8b,id:"minecraft:diamond",Count:1b}]} run tag @s add Custom_Crafter_Succes
execute as @e[tag=Custom_Crafter_Crafting] at @s if block ~ ~-0.5 ~ minecraft:dropper{Items:[{Slot:0b,id:"minecraft:diamond",Count:1b},{Slot:1b,id:"minecraft:iron_ingot",Count:1b},{Slot:2b,id:"minecraft:obsidian",Count:1b},{Slot:3b,id:"minecraft:light_blue_stained_glass",Count:1b},{Slot:4b,id:"minecraft:ender_eye",Count:1b},{Slot:5b,id:"minecraft:light_blue_stained_glass",Count:1b},{Slot:6b,id:"minecraft:obsidian",Count:1b},{Slot:7b,id:"minecraft:iron_ingot",Count:1b},{Slot:8b,id:"minecraft:diamond",Count:1b}]} run give @p knowledge_book{Recipes:["minecraft:crafting_table"],display:{Name:'{"text":"Photon Disc Ver2.0","color":"gold","italic":false}',Lore:['{"text":"Category:Melee/Ranged","color":"gray","italic":false}','{"text":" ","color":"white","italic":false}','{"text":"[RClick: Throw]","color":"white","italic":false}','{"text":"[Sneak: Quick Return]","color":"white","italic":false}','{"text":"[Sneak+RClick: SpinAttack]","color":"white","italic":false}','{"text":" "}','{"text":"この光子の刃で敵を斬り裂け。","color":"white","italic":false}','{"text":"ディスクは敵を貫通し、地形で反射する。","color":"white","italic":false}','{"text":" "}','{"text":"Damage +7","color":"blue","italic":false}']},HideFlags:35,Unbreakable:1b,CustomModelData:4,ItemName:Photon_Disc_2,AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:6.5,Operation:0,UUIDLeast:539149,UUIDMost:862369,Slot:"mainhand"},{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-2.6,Operation:0,UUIDLeast:119966,UUIDMost:268925,Slot:"mainhand"}]}
execute as @e[tag=Custom_Crafter_Crafting] at @s if block ~ ~-0.5 ~ minecraft:dropper{Items:[{Slot:0b,id:"minecraft:diamond",Count:1b},{Slot:1b,id:"minecraft:iron_ingot",Count:1b},{Slot:2b,id:"minecraft:obsidian",Count:1b},{Slot:3b,id:"minecraft:light_blue_stained_glass",Count:1b},{Slot:4b,id:"minecraft:ender_eye",Count:1b},{Slot:5b,id:"minecraft:light_blue_stained_glass",Count:1b},{Slot:6b,id:"minecraft:obsidian",Count:1b},{Slot:7b,id:"minecraft:iron_ingot",Count:1b},{Slot:8b,id:"minecraft:diamond",Count:1b}]} run data merge block ~ ~-1 ~ {Items:{}}

#旧アイテム変換
give @a[nbt={Inventory:[{id:"minecraft:trident",Count:1b,tag:{ItemName:Photon_Disc_2}}]}] knowledge_book{Recipes:["minecraft:crafting_table"],display:{Name:'{"text":"Photon Disc Ver2.0","color":"gold","italic":false}',Lore:['{"text":"Category:Melee/Ranged","color":"gray","italic":false}','{"text":" ","color":"white","italic":false}','{"text":"[RClick: Throw]","color":"white","italic":false}','{"text":"[Sneak: Quick Return]","color":"white","italic":false}','{"text":"[Sneak+RClick: SpinAttack]","color":"white","italic":false}','{"text":" "}','{"text":"この光子の刃で敵を斬り裂け。","color":"white","italic":false}','{"text":"ディスクは敵を貫通し、地形で反射する。","color":"white","italic":false}','{"text":" "}','{"text":"Damage +7","color":"blue","italic":false}']},HideFlags:35,Unbreakable:1b,CustomModelData:4,ItemName:Photon_Disc_2,AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:6.5,Operation:0,UUIDLeast:539149,UUIDMost:862369,Slot:"mainhand"},{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-2.6,Operation:0,UUIDLeast:119966,UUIDMost:268925,Slot:"mainhand"}]}
clear @a[nbt={Inventory:[{id:"minecraft:trident",Count:1b,tag:{ItemName:Photon_Disc_2}}]}] trident{ItemName:Photon_Disc_2}

#--------------------------
#めっちゃ反射する・リコチェッター
#--------------------------

#タグ付与
tag @a[nbt={SelectedItem:{tag:{ItemName:Ricochetter}}}] add Hold_Ricochetter
tag @a[nbt={Inventory:[{Slot:-106b,tag:{ItemName:Ricochetter}}]}] add Off_Ricochetter

#投げ
execute as @a[tag=Hold_Ricochetter,scores={ThWe_Throw=1..}] at @s run summon armor_stand ~ ~1.05 ~ {PortalCooldown:999999,Small:1b,Silent:1b,Invisible:1b,Tags:["ThWe_Rico","ThWe_Rico0","NeedID","WallHitBox","WHB0","ThWe_Spin"],Pose:{Head:[0.1f,0.1f,0.1f]},DisabledSlots:4144959,ArmorItems:[{id:"minecraft:command_block",Count:1b},{},{},{id:"minecraft:knowledge_book",Count:1b,tag:{CustomModelData:5}}]}
execute as @a[tag=Hold_Ricochetter,scores={ThWe_Throw=1..}] at @s run playsound minecraft:entity.arrow.shoot player @a ~ ~ ~ 1.5 0

#投げ（オフハンド）
execute as @a[nbt=!{Inventory:[{Slot:-106b,tag:{ItemName:Ricochetter}}]},tag=Off_Ricochetter,scores={ThWe_Throw=1..}] at @s run summon armor_stand ~ ~1.05 ~ {PortalCooldown:999999,Small:1b,Silent:1b,Invisible:1b,Tags:["ThWe_Rico","ThWe_Rico0","NeedID","WallHitBox","WHB0","ThWe_Spin","ThWe_Off"],Pose:{Head:[0.1f,0.1f,0.1f]},DisabledSlots:4144959,ArmorItems:[{id:"minecraft:command_block",Count:1b},{},{},{id:"minecraft:knowledge_book",Count:1b,tag:{CustomModelData:5}}]}
execute as @a[nbt=!{Inventory:[{Slot:-106b,tag:{ItemName:Ricochetter}}]},tag=Off_Ricochetter,scores={ThWe_Throw=1..}] at @s run playsound minecraft:entity.arrow.shoot player @a ~ ~ ~ 1.5 0

#タグ削除
tag @a[nbt=!{SelectedItem:{tag:{ItemName:Ricochetter}}}] remove Hold_Ricochetter
tag @a[nbt=!{Inventory:[{Slot:-106b,tag:{ItemName:Ricochetter}}]}] remove Off_Ricochetter

#戻ってくる
execute as @a at @e[tag=Return,tag=ThWe_Rico] if score @s PlayerID = @e[limit=1,sort=nearest] ScoreID2 run teleport @e[limit=1,sort=nearest] ^ ^ ^0.5 facing entity @s eyes
execute as @a at @e[tag=Return,tag=ThWe_Rico] if score @s PlayerID = @e[limit=1,sort=nearest] ScoreID2 run teleport @e[limit=1,sort=nearest] ^ ^ ^0.5 facing entity @s feet

#アイテム動作フロー
execute as @e[tag=ThWe_Rico] at @s run function throwing_weapons:items/ricochetter

#クラフト
execute as @e[tag=Custom_Crafter_Crafting] at @s if block ~ ~-0.5 ~ minecraft:dropper{Items:[{Slot:0b,id:"minecraft:diamond",Count:1b},{Slot:1b,id:"minecraft:iron_ingot",Count:1b},{Slot:2b,id:"minecraft:obsidian",Count:1b},{Slot:3b,id:"minecraft:lime_stained_glass",Count:1b},{Slot:4b,id:"minecraft:ender_eye",Count:1b},{Slot:5b,id:"minecraft:lime_stained_glass",Count:1b},{Slot:6b,id:"minecraft:obsidian",Count:1b},{Slot:7b,id:"minecraft:iron_ingot",Count:1b},{Slot:8b,id:"minecraft:diamond",Count:1b}]} run tag @s add Custom_Crafter_Succes
execute as @e[tag=Custom_Crafter_Crafting] at @s if block ~ ~-0.5 ~ minecraft:dropper{Items:[{Slot:0b,id:"minecraft:diamond",Count:1b},{Slot:1b,id:"minecraft:iron_ingot",Count:1b},{Slot:2b,id:"minecraft:obsidian",Count:1b},{Slot:3b,id:"minecraft:lime_stained_glass",Count:1b},{Slot:4b,id:"minecraft:ender_eye",Count:1b},{Slot:5b,id:"minecraft:lime_stained_glass",Count:1b},{Slot:6b,id:"minecraft:obsidian",Count:1b},{Slot:7b,id:"minecraft:iron_ingot",Count:1b},{Slot:8b,id:"minecraft:diamond",Count:1b}]} run give @p knowledge_book{Recipes:["minecraft:crafting_table"],display:{Name:'{"text":"Ricochetter","color":"gold","italic":false}',Lore:['{"text":"Category:Melee/Ranged","color":"gray","italic":false}','{"text":" ","color":"white","italic":false}','{"text":"[RClick: Throw]","color":"white","italic":false}','{"text":"[Sneak: Quick Return]","color":"white","italic":false}','{"text":" "}','{"text":"地形での反射を重視したディスク。","color":"white","italic":false}','{"text":"狭い場所に投げると効果的。","color":"white","italic":false}','{"text":" "}','{"text":"Damage +7","color":"blue","italic":false}']},HideFlags:35,Unbreakable:1b,CustomModelData:5,ItemName:Ricochetter,AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:6.5,Operation:0,UUIDLeast:539149,UUIDMost:862369,Slot:"mainhand"},{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-2.6,Operation:0,UUIDLeast:119966,UUIDMost:268925,Slot:"mainhand"}]}
execute as @e[tag=Custom_Crafter_Crafting] at @s if block ~ ~-0.5 ~ minecraft:dropper{Items:[{Slot:0b,id:"minecraft:diamond",Count:1b},{Slot:1b,id:"minecraft:iron_ingot",Count:1b},{Slot:2b,id:"minecraft:obsidian",Count:1b},{Slot:3b,id:"minecraft:lime_stained_glass",Count:1b},{Slot:4b,id:"minecraft:ender_eye",Count:1b},{Slot:5b,id:"minecraft:lime_stained_glass",Count:1b},{Slot:6b,id:"minecraft:obsidian",Count:1b},{Slot:7b,id:"minecraft:iron_ingot",Count:1b},{Slot:8b,id:"minecraft:diamond",Count:1b}]} run data merge block ~ ~-1 ~ {Items:{}}

#旧アイテム変換
give @a[nbt={Inventory:[{id:"minecraft:trident",Count:1b,tag:{ItemName:Ricochetter}}]}] knowledge_book{Recipes:["minecraft:crafting_table"],display:{Name:'{"text":"Ricochetter","color":"gold","italic":false}',Lore:['{"text":"Category:Melee/Ranged","color":"gray","italic":false}','{"text":" ","color":"white","italic":false}','{"text":"[RClick: Throw]","color":"white","italic":false}','{"text":"[Sneak: Quick Return]","color":"white","italic":false}','{"text":" "}','{"text":"地形での反射を重視したディスク。","color":"white","italic":false}','{"text":"狭い場所に投げると効果的。","color":"white","italic":false}','{"text":" "}','{"text":"Damage +7","color":"blue","italic":false}']},HideFlags:35,Unbreakable:1b,CustomModelData:5,ItemName:Ricochetter,AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:6.5,Operation:0,UUIDLeast:539149,UUIDMost:862369,Slot:"mainhand"},{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-2.6,Operation:0,UUIDLeast:119966,UUIDMost:268925,Slot:"mainhand"}]}
clear @a[nbt={Inventory:[{id:"minecraft:trident",Count:1b,tag:{ItemName:Ricochetter}}]}] trident{ItemName:Ricochetter}

#--------------------------
#自身を転送・エンダースロー
#--------------------------

#タグ付与
tag @a[nbt={SelectedItem:{tag:{ItemName:Ender_Throw}}}] add Hold_EnderThrow
tag @a[nbt={Inventory:[{Slot:-106b,tag:{ItemName:Ender_Throw}}]}] add Off_EnderThrow

#投げ
execute as @a[tag=Hold_EnderThrow,scores={ThWe_Throw=1..}] at @s run summon armor_stand ~ ~1.05 ~ {PortalCooldown:999999,Small:1b,Silent:1b,Invisible:1b,Tags:["ThWe_Ender","ThWe_Ender0","NeedID","WallHitBox","WHB0","ThWe_Spin"],Pose:{Head:[0.1f,0.1f,0.1f]},DisabledSlots:4144959,ArmorItems:[{id:"minecraft:command_block",Count:1b},{},{},{id:"minecraft:knowledge_book",Count:1b,tag:{CustomModelData:6}}]}
execute as @a[tag=Hold_EnderThrow,scores={ThWe_Throw=1..}] at @s run playsound minecraft:entity.arrow.shoot player @a ~ ~ ~ 1.5 0

#投げ（オフハンド）
execute as @a[nbt=!{Inventory:[{Slot:-106b,tag:{ItemName:Ender_Throw}}]},tag=Off_EnderThrow,scores={ThWe_Throw=1..}] at @s run summon armor_stand ~ ~1.05 ~ {PortalCooldown:999999,Small:1b,Silent:1b,Invisible:1b,Tags:["ThWe_Ender","ThWe_Ender0","NeedID","WallHitBox","WHB0","ThWe_Spin","ThWe_Off"],Pose:{Head:[0.1f,0.1f,0.1f]},DisabledSlots:4144959,ArmorItems:[{id:"minecraft:command_block",Count:1b},{},{},{id:"minecraft:knowledge_book",Count:1b,tag:{CustomModelData:6}}]}
execute as @a[nbt=!{Inventory:[{Slot:-106b,tag:{ItemName:Ender_Throw}}]},tag=Off_EnderThrow,scores={ThWe_Throw=1..}] at @s run playsound minecraft:entity.arrow.shoot player @a ~ ~ ~ 1.5 0

#タグ削除
tag @a[nbt=!{SelectedItem:{tag:{ItemName:Ender_Throw}}}] remove Hold_EnderThrow
tag @a[nbt=!{Inventory:[{Slot:-106b,tag:{ItemName:Ender_Throw}}]}] remove Off_EnderThrow

#アイテム動作フロー
execute as @e[tag=ThWe_Ender] at @s run function throwing_weapons:items/ender_throw

#クラフト
execute as @e[tag=Custom_Crafter_Crafting] at @s if block ~ ~-0.5 ~ minecraft:dropper{Items:[{Slot:0b,id:"minecraft:diamond",Count:1b},{Slot:1b,id:"minecraft:iron_ingot",Count:1b},{Slot:2b,id:"minecraft:obsidian",Count:1b},{Slot:3b,id:"minecraft:purple_stained_glass",Count:1b},{Slot:4b,id:"minecraft:ender_eye",Count:1b},{Slot:5b,id:"minecraft:purple_stained_glass",Count:1b},{Slot:6b,id:"minecraft:obsidian",Count:1b},{Slot:7b,id:"minecraft:iron_ingot",Count:1b},{Slot:8b,id:"minecraft:diamond",Count:1b}]} run tag @s add Custom_Crafter_Succes
execute as @e[tag=Custom_Crafter_Crafting] at @s if block ~ ~-0.5 ~ minecraft:dropper{Items:[{Slot:0b,id:"minecraft:diamond",Count:1b},{Slot:1b,id:"minecraft:iron_ingot",Count:1b},{Slot:2b,id:"minecraft:obsidian",Count:1b},{Slot:3b,id:"minecraft:purple_stained_glass",Count:1b},{Slot:4b,id:"minecraft:ender_eye",Count:1b},{Slot:5b,id:"minecraft:purple_stained_glass",Count:1b},{Slot:6b,id:"minecraft:obsidian",Count:1b},{Slot:7b,id:"minecraft:iron_ingot",Count:1b},{Slot:8b,id:"minecraft:diamond",Count:1b}]} run give @p knowledge_book{Recipes:["minecraft:crafting_table"],display:{Name:'{"text":"Ender Throw","color":"gold","italic":false}',Lore:['{"text":"Category:Melee/Ranged","color":"gray","italic":false}','{"text":" ","color":"white","italic":false}','{"text":"[RClick: Throw]","color":"white","italic":false}','{"text":"[Sneak: Teleport]","color":"white","italic":false}','{"text":" "}','{"text":"エンドの転移技術を応用したディスク。","color":"white","italic":false}','{"text":"投げたディスクにワープで移動しよう。","color":"white","italic":false}','{"text":" "}','{"text":"Damage +7","color":"blue","italic":false}']},HideFlags:35,Unbreakable:1b,CustomModelData:6,ItemName:Ender_Throw,AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:6.5,Operation:0,UUIDLeast:539149,UUIDMost:862369,Slot:"mainhand"},{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-2.6,Operation:0,UUIDLeast:119966,UUIDMost:268925,Slot:"mainhand"}]}
execute as @e[tag=Custom_Crafter_Crafting] at @s if block ~ ~-0.5 ~ minecraft:dropper{Items:[{Slot:0b,id:"minecraft:diamond",Count:1b},{Slot:1b,id:"minecraft:iron_ingot",Count:1b},{Slot:2b,id:"minecraft:obsidian",Count:1b},{Slot:3b,id:"minecraft:purple_stained_glass",Count:1b},{Slot:4b,id:"minecraft:ender_eye",Count:1b},{Slot:5b,id:"minecraft:purple_stained_glass",Count:1b},{Slot:6b,id:"minecraft:obsidian",Count:1b},{Slot:7b,id:"minecraft:iron_ingot",Count:1b},{Slot:8b,id:"minecraft:diamond",Count:1b}]} run data merge block ~ ~-1 ~ {Items:{}}

#旧アイテム変換
give @a[nbt={Inventory:[{id:"minecraft:trident",Count:1b,tag:{ItemName:Ender_Throw}}]}] knowledge_book{Recipes:["minecraft:crafting_table"],display:{Name:'{"text":"Ender Throw","color":"gold","italic":false}',Lore:['{"text":"Category:Melee/Ranged","color":"gray","italic":false}','{"text":" ","color":"white","italic":false}','{"text":"[RClick: Throw]","color":"white","italic":false}','{"text":"[Sneak: Teleport]","color":"white","italic":false}','{"text":" "}','{"text":"エンドの転移技術を応用したディスク。","color":"white","italic":false}','{"text":"投げたディスクにワープで移動しよう。","color":"white","italic":false}','{"text":" "}','{"text":"Damage +7","color":"blue","italic":false}']},HideFlags:35,Unbreakable:1b,CustomModelData:6,ItemName:Ender_Throw,AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:6.5,Operation:0,UUIDLeast:539149,UUIDMost:862369,Slot:"mainhand"},{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-2.6,Operation:0,UUIDLeast:119966,UUIDMost:268925,Slot:"mainhand"}]}
clear @a[nbt={Inventory:[{id:"minecraft:trident",Count:1b,tag:{ItemName:Ender_Throw}}]}] trident{ItemName:Ender_Throw}

#--------------------------
#発音わからん・Shearang
#--------------------------

#タグ付与
tag @a[nbt={SelectedItem:{tag:{ItemName:Shearang}}}] add Hold_Shearang
tag @a[nbt={Inventory:[{Slot:-106b,tag:{ItemName:Shearang}}]}] add Off_Shearang

#投げ
execute as @a[tag=Hold_Shearang,scores={ThWe_Throw=1..}] at @s run summon armor_stand ~ ~1.05 ~ {PortalCooldown:999999,Small:1b,Silent:1b,Invisible:1b,Tags:["ThWe_Shear","ThWe_Shear0","NeedID","WallHitBox","WHB0","ThWe_Spin"],Pose:{Head:[0.1f,0.1f,0.1f]},DisabledSlots:4144959,ArmorItems:[{id:"minecraft:command_block",Count:1b},{},{},{id:"minecraft:knowledge_book",Count:1b,tag:{CustomModelData:7}}]}
execute as @a[tag=Hold_Shearang,scores={ThWe_Throw=1..}] at @s run playsound minecraft:entity.arrow.shoot player @a ~ ~ ~ 1.5 0

#投げ（オフハンド）
execute as @a[nbt=!{Inventory:[{Slot:-106b,tag:{ItemName:Shearang}}]},tag=Off_Shearang,scores={ThWe_Throw=1..}] at @s run summon armor_stand ~ ~1.05 ~ {PortalCooldown:999999,Small:1b,Silent:1b,Invisible:1b,Tags:["ThWe_Shear","ThWe_Shear0","NeedID","WallHitBox","WHB0","ThWe_Spin","ThWe_Off"],Pose:{Head:[0.1f,0.1f,0.1f]},DisabledSlots:4144959,ArmorItems:[{id:"minecraft:command_block",Count:1b},{},{},{id:"minecraft:knowledge_book",Count:1b,tag:{CustomModelData:7}}]}
execute as @a[nbt=!{Inventory:[{Slot:-106b,tag:{ItemName:Shearang}}]},tag=Off_Shearang,scores={ThWe_Throw=1..}] at @s run playsound minecraft:entity.arrow.shoot player @a ~ ~ ~ 1.5 0

#タグ削除
tag @a[nbt=!{SelectedItem:{tag:{ItemName:Shearang}}}] remove Hold_Shearang
tag @a[nbt=!{Inventory:[{Slot:-106b,tag:{ItemName:Shearang}}]}] remove Off_Shearang

#戻ってくる
execute as @a at @e[tag=Return,tag=ThWe_Shear] if score @s PlayerID = @e[limit=1,sort=nearest] ScoreID2 run teleport @e[limit=1,sort=nearest] ^ ^ ^0.75 facing entity @s eyes
execute as @a at @e[tag=Return,tag=ThWe_Shear] if score @s PlayerID = @e[limit=1,sort=nearest] ScoreID2 run teleport @e[limit=1,sort=nearest] ^ ^ ^0.75 facing entity @s feet

#アイテム動作フロー
execute as @e[tag=ThWe_Shear] at @s run function throwing_weapons:items/shearang

#クラフト
execute as @e[tag=Custom_Crafter_Crafting] at @s if block ~ ~-0.5 ~ minecraft:dropper{Items:[{Slot:0b,id:"minecraft:string",Count:1b},{Slot:1b,id:"minecraft:flint",Count:1b},{Slot:2b,id:"minecraft:string",Count:1b},{Slot:3b,id:"minecraft:shears",Count:1b},{Slot:4b,id:"minecraft:ender_pearl",Count:1b},{Slot:5b,id:"minecraft:shears",Count:1b},{Slot:6b,id:"minecraft:string",Count:1b},{Slot:7b,id:"minecraft:flint",Count:1b},{Slot:8b,id:"minecraft:string",Count:1b}]} run tag @s add Custom_Crafter_Succes
execute as @e[tag=Custom_Crafter_Crafting] at @s if block ~ ~-0.5 ~ minecraft:dropper{Items:[{Slot:0b,id:"minecraft:string",Count:1b},{Slot:1b,id:"minecraft:flint",Count:1b},{Slot:2b,id:"minecraft:string",Count:1b},{Slot:3b,id:"minecraft:shears",Count:1b},{Slot:4b,id:"minecraft:ender_pearl",Count:1b},{Slot:5b,id:"minecraft:shears",Count:1b},{Slot:6b,id:"minecraft:string",Count:1b},{Slot:7b,id:"minecraft:flint",Count:1b},{Slot:8b,id:"minecraft:string",Count:1b}]} run give @p knowledge_book{Recipes:["minecraft:crafting_table"],display:{Name:'{"text":"Shearang","color":"aqua","italic":false}',Lore:['{"text":"Category:Melee/Ranged","color":"gray","italic":false}','{"text":" ","color":"white","italic":false}','{"text":"[RClick: Throw]","color":"white","italic":false}','{"text":" "}','{"text":"風変わりな武器。ブーメランの一種だろうか？","color":"white","italic":false}','{"text":"投てき攻撃で相手の武器を奪うことができる。","color":"white","italic":false}','{"text":" "}','{"text":"Damage +5","color":"blue","italic":false}']},HideFlags:35,Unbreakable:1b,CustomModelData:7,ItemName:Shearang,AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:4.5,Operation:0,UUIDLeast:539149,UUIDMost:862369,Slot:"mainhand"},{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-2.2,Operation:0,UUIDLeast:119966,UUIDMost:268925,Slot:"mainhand"}]}
execute as @e[tag=Custom_Crafter_Crafting] at @s if block ~ ~-0.5 ~ minecraft:dropper{Items:[{Slot:0b,id:"minecraft:string",Count:1b},{Slot:1b,id:"minecraft:flint",Count:1b},{Slot:2b,id:"minecraft:string",Count:1b},{Slot:3b,id:"minecraft:shears",Count:1b},{Slot:4b,id:"minecraft:ender_pearl",Count:1b},{Slot:5b,id:"minecraft:shears",Count:1b},{Slot:6b,id:"minecraft:string",Count:1b},{Slot:7b,id:"minecraft:flint",Count:1b},{Slot:8b,id:"minecraft:string",Count:1b}]} run data merge block ~ ~-1 ~ {Items:{}}

#旧アイテム変換
give @a[nbt={Inventory:[{id:"minecraft:trident",Count:1b,tag:{ItemName:Shearang}}]}] knowledge_book{Recipes:["minecraft:crafting_table"],display:{Name:'{"text":"Shearang","color":"aqua","italic":false}',Lore:['{"text":"Category:Melee/Ranged","color":"gray","italic":false}','{"text":" ","color":"white","italic":false}','{"text":"[RClick: Throw]","color":"white","italic":false}','{"text":" "}','{"text":"風変わりな武器。ブーメランの一種だろうか？","color":"white","italic":false}','{"text":"投てき攻撃で相手の武器を奪うことができる。","color":"white","italic":false}','{"text":" "}','{"text":"Damage +5","color":"blue","italic":false}']},HideFlags:35,Unbreakable:1b,CustomModelData:7,ItemName:Shearang,AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:4.5,Operation:0,UUIDLeast:539149,UUIDMost:862369,Slot:"mainhand"},{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-2.2,Operation:0,UUIDLeast:119966,UUIDMost:268925,Slot:"mainhand"}]}
clear @a[nbt={Inventory:[{id:"minecraft:trident",Count:1b,tag:{ItemName:Shearang}}]}] trident{ItemName:Shearang}

#--------------------------
#すごいなつかしい・グッドリーパー
#--------------------------

#タグ付与
tag @a[nbt={SelectedItem:{tag:{ItemName:Good_Reaper}}}] add Hold_GoodReaper
tag @a[nbt={Inventory:[{Slot:-106b,tag:{ItemName:Good_Reaper}}]}] add Off_GoodReaper

#投げ
execute as @a[tag=Hold_GoodReaper,scores={ThWe_Throw=1..}] at @s run summon armor_stand ~ ~1.05 ~ {PortalCooldown:999999,Small:1b,Silent:1b,Invisible:1b,Tags:["ThWe_Reaper","ThWe_Reaper0","NeedID","WallHitBox","WHB0","ThWe_Spin"],Pose:{Head:[0.1f,0.1f,0.1f]},DisabledSlots:4144959,ArmorItems:[{id:"minecraft:command_block",Count:1b},{},{},{id:"minecraft:knowledge_book",Count:1b,tag:{CustomModelData:1}}]}
execute as @a[tag=Hold_GoodReaper,scores={ThWe_Throw=1..}] at @s run playsound minecraft:item.trident.riptide_1 player @a ~ ~ ~ 1.5 0.5

#投げ（オフハンド）
execute as @a[nbt=!{Inventory:[{Slot:-106b,tag:{ItemName:Good_Reaper}}]},tag=Off_GoodReaper,scores={ThWe_Throw=1..}] at @s run summon armor_stand ~ ~1.05 ~ {PortalCooldown:999999,Small:1b,Silent:1b,Invisible:1b,Tags:["ThWe_Reaper","ThWe_Reaper0","NeedID","WallHitBox","WHB0","ThWe_Spin","ThWe_Off"],Pose:{Head:[0.1f,0.1f,0.1f]},DisabledSlots:4144959,ArmorItems:[{id:"minecraft:command_block",Count:1b},{},{},{id:"minecraft:knowledge_book",Count:1b,tag:{CustomModelData:1}}]}
execute as @a[nbt=!{Inventory:[{Slot:-106b,tag:{ItemName:Good_Reaper}}]},tag=Off_GoodReaper,scores={ThWe_Throw=1..}] at @s run playsound minecraft:item.trident.riptide_1 player @a ~ ~ ~ 1.5 0.5

#タグ削除
tag @a[nbt=!{SelectedItem:{tag:{ItemName:Good_Reaper}}}] remove Hold_GoodReaper
tag @a[nbt=!{Inventory:[{Slot:-106b,tag:{ItemName:Good_Reaper}}]}] remove Off_GoodReaper

#アイテム動作フロー
execute as @e[tag=ThWe_Reaper] at @s run function throwing_weapons:items/good_reaper

#戻ってくる
execute as @a at @e[tag=Return,tag=ThWe_Reaper] if score @s PlayerID = @e[limit=1,sort=nearest] ScoreID2 run teleport @e[limit=1,sort=nearest] ^ ^ ^0.5 facing entity @s eyes
execute as @a at @e[tag=Return,tag=ThWe_Reaper] if score @s PlayerID = @e[limit=1,sort=nearest] ScoreID2 run teleport @e[limit=1,sort=nearest] ^ ^ ^0.5 facing entity @s feet

#クラフト
execute as @e[tag=Custom_Crafter_Crafting] at @s if block ~ ~-0.5 ~ minecraft:dropper{Items:[{Slot:0b,id:"minecraft:iron_block",Count:1b},{Slot:1b,id:"minecraft:iron_block",Count:1b},{Slot:2b,id:"minecraft:end_crystal",Count:1b},{Slot:4b,id:"minecraft:diamond_hoe",Count:1b},{Slot:5b,id:"minecraft:iron_block",Count:1b},{Slot:6b,id:"minecraft:oak_log",Count:1b}]} run tag @s add Custom_Crafter_Succes
execute as @e[tag=Custom_Crafter_Crafting] at @s if block ~ ~-0.5 ~ minecraft:dropper{Items:[{Slot:0b,id:"minecraft:iron_block",Count:1b},{Slot:1b,id:"minecraft:iron_block",Count:1b},{Slot:2b,id:"minecraft:end_crystal",Count:1b},{Slot:4b,id:"minecraft:diamond_hoe",Count:1b},{Slot:5b,id:"minecraft:iron_block",Count:1b},{Slot:6b,id:"minecraft:oak_log",Count:1b}]} run give @p knowledge_book{Recipes:["minecraft:crafting_table"],display:{Name:'{"text":"Re:The Good Reaper","color":"gold","italic":false}',Lore:['{"text":"Category:Melee/Ranged","color":"gray","italic":false}','{"text":" ","color":"white","italic":false}','{"text":"[RClick: Throw]","color":"white","italic":false}','{"text":"[Sneak: Quick Return]","color":"white","italic":false}','{"text":" "}','{"text":"帰ってきた立派な大鎌。相変わらずの大きさ。","color":"white","italic":false}','{"text":"やはり常人に扱える代物ではない気がする。","color":"white","italic":false}','{"text":" "}','{"text":"Damage +12","color":"blue","italic":false}']},HideFlags:35,Unbreakable:1b,CustomModelData:1,ItemName:Good_Reaper,AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:11.5,Operation:0,UUIDLeast:539149,UUIDMost:862369,Slot:"mainhand"},{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-3.5,Operation:0,UUIDLeast:119966,UUIDMost:268925,Slot:"mainhand"}]}
execute as @e[tag=Custom_Crafter_Crafting] at @s if block ~ ~-0.5 ~ minecraft:dropper{Items:[{Slot:0b,id:"minecraft:iron_block",Count:1b},{Slot:1b,id:"minecraft:iron_block",Count:1b},{Slot:2b,id:"minecraft:end_crystal",Count:1b},{Slot:4b,id:"minecraft:diamond_hoe",Count:1b},{Slot:5b,id:"minecraft:iron_block",Count:1b},{Slot:6b,id:"minecraft:oak_log",Count:1b}]} run data merge block ~ ~-1 ~ {Items:{}}

#旧アイテム変換
give @a[nbt={Inventory:[{id:"minecraft:trident",Count:1b,tag:{ItemName:Good_Reaper}}]}] knowledge_book{Recipes:["minecraft:crafting_table"],display:{Name:'{"text":"Re:The Good Reaper","color":"gold","italic":false}',Lore:['{"text":"Category:Melee/Ranged","color":"gray","italic":false}','{"text":" ","color":"white","italic":false}','{"text":"[RClick: Throw]","color":"white","italic":false}','{"text":"[Sneak: Quick Return]","color":"white","italic":false}','{"text":" "}','{"text":"帰ってきた立派な大鎌。相変わらずの大きさ。","color":"white","italic":false}','{"text":"やはり常人に扱える代物ではない気がする。","color":"white","italic":false}','{"text":" "}','{"text":"Damage +12","color":"blue","italic":false}']},HideFlags:35,Unbreakable:1b,CustomModelData:1,ItemName:Good_Reaper,AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:11.5,Operation:0,UUIDLeast:539149,UUIDMost:862369,Slot:"mainhand"},{AttributeName:"generic.attackSpeed",Name:"generic.attackSpeed",Amount:-3.5,Operation:0,UUIDLeast:119966,UUIDMost:268925,Slot:"mainhand"}]}
clear @a[nbt={Inventory:[{id:"minecraft:trident",Count:1b,tag:{ItemName:Good_Reaper}}]}] trident{ItemName:Good_Reaper}

#--------------------------
#麦わら帽子
#--------------------------

#タグ付与
tag @a[nbt={SelectedItem:{tag:{ItemName:Mugiwara}}}] add Hold_Mugiwara
tag @a[nbt={Inventory:[{Slot:-106b,tag:{ItemName:Mugiwara}}]}] add Off_Mugiwara

#投げ
execute as @a[tag=Hold_Mugiwara,scores={ThWe_Throw=1..}] at @s run summon armor_stand ~ ~1.05 ~ {PortalCooldown:999999,Small:1b,Silent:1b,Invisible:1b,Tags:["ThWe_Mugiwara","ThWe_Mugiwara0","NeedID","WallHitBox","WHB0","ThWe_Spin"],Pose:{Head:[0.1f,0.1f,0.1f]},DisabledSlots:4144959,ArmorItems:[{id:"minecraft:command_block",Count:1b},{},{},{id:"minecraft:knowledge_book",Count:1b,tag:{CustomModelData:8}}]}
execute as @a[tag=Hold_Mugiwara,scores={ThWe_Throw=1..}] at @s run playsound minecraft:entity.arrow.shoot player @a ~ ~ ~ 1.5 0

#投げ(オフハンド
execute as @a[nbt=!{Inventory:[{Slot:-106b,tag:{ItemName:Mugiwara}}]},tag=Off_Mugiwara,scores={ThWe_Throw=1..}] at @s run summon armor_stand ~ ~1.05 ~ {PortalCooldown:999999,Small:1b,Silent:1b,Invisible:1b,Tags:["ThWe_Mugiwara","ThWe_Mugiwara0","NeedID","WallHitBox","WHB0","ThWe_Spin"],Pose:{Head:[0.1f,0.1f,0.1f]},DisabledSlots:4144959,ArmorItems:[{id:"minecraft:command_block",Count:1b},{},{},{id:"minecraft:knowledge_book",Count:1b,tag:{CustomModelData:8}}]}
execute as @a[nbt=!{Inventory:[{Slot:-106b,tag:{ItemName:Mugiwara}}]},tag=Off_Mugiwara,scores={ThWe_Throw=1..}] at @s run playsound minecraft:entity.arrow.shoot player @a ~ ~ ~ 1.5 0

#タグ削除
tag @a[nbt=!{SelectedItem:{tag:{ItemName:Mugiwara}}}] remove Hold_Mugiwara
tag @a[nbt=!{Inventory:[{Slot:-106b,tag:{ItemName:Mugiwara}}]}] remove Off_Mugiwara

#アイテム動作フロー
execute as @e[tag=ThWe_Mugiwara] at @s run function throwing_weapons:items/mugiwara

#かぶる
tag @a[nbt=!{Inventory:[{Slot:103b}]},nbt={SelectedItem:{tag:{ItemName:Mugiwara}}},scores={ThWe_Sneak=1..}] add ThWe_Wear
execute at @a[tag=ThWe_Wear] run playsound minecraft:item.armor.equip_leather player @a ~ ~ ~ 1.5 1
replaceitem entity @a[tag=ThWe_Wear] armor.head knowledge_book{Recipes:["minecraft:crafting_table"],display:{Name:'{"text":"Straw Hat","color":"white","italic":false}',Lore:['{"text":"Category:Hat","color":"gray","italic":false}','{"text":" ","color":"white","italic":false}','{"text":"[RClick: Throw]","color":"white","italic":false}','{"text":"[Sneak: Wear]","color":"white","italic":false}','{"text":" "}','{"text":"至って普通の麦わら帽子。かぶって日差しを防ごう。","color":"white","italic":false}','{"text":"なぜか投げつける事ができるが、特に意味はない。","color":"white","italic":false}']},HideFlags:39,Unbreakable:1b,CustomModelData:9,ItemName:Mugiwara,AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:0.0,Operation:0,UUIDLeast:539149,UUIDMost:862369,Slot:"mainhand"}]}
replaceitem entity @a[tag=ThWe_Wear] weapon.mainhand air
tag @a[tag=ThWe_Wear] remove ThWe_Wear
tag @e[tag=ThWe_Wear_2] remove ThWe_Wear_2

#クラフト
execute as @e[tag=Custom_Crafter_Crafting] at @s if block ~ ~-0.5 ~ minecraft:dropper{Items:[{Slot:0b,id:"minecraft:wheat",Count:1b},{Slot:1b,id:"minecraft:wheat",Count:1b},{Slot:2b,id:"minecraft:wheat",Count:1b},{Slot:3b,id:"minecraft:wheat",Count:1b},{Slot:5b,id:"minecraft:wheat",Count:1b}]} run tag @s add Custom_Crafter_Succes
execute as @e[tag=Custom_Crafter_Crafting] at @s if block ~ ~-0.5 ~ minecraft:dropper{Items:[{Slot:0b,id:"minecraft:wheat",Count:1b},{Slot:1b,id:"minecraft:wheat",Count:1b},{Slot:2b,id:"minecraft:wheat",Count:1b},{Slot:3b,id:"minecraft:wheat",Count:1b},{Slot:5b,id:"minecraft:wheat",Count:1b}]} run give @p knowledge_book{Recipes:["minecraft:crafting_table"],display:{Name:'{"text":"Straw Hat","color":"white","italic":false}',Lore:['{"text":"Category:Hat","color":"gray","italic":false}','{"text":" ","color":"white","italic":false}','{"text":"[RClick: Throw]","color":"white","italic":false}','{"text":"[Sneak: Wear]","color":"white","italic":false}','{"text":" "}','{"text":"至って普通の麦わら帽子。かぶって日差しを防ごう。","color":"white","italic":false}','{"text":"なぜか投げつける事ができるが、特に意味はない。","color":"white","italic":false}']},HideFlags:39,Unbreakable:1b,CustomModelData:9,ItemName:Mugiwara,AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:0.0,Operation:0,UUIDLeast:539149,UUIDMost:862369,Slot:"mainhand"}]}
execute as @e[tag=Custom_Crafter_Crafting] at @s if block ~ ~-0.5 ~ minecraft:dropper{Items:[{Slot:0b,id:"minecraft:wheat",Count:1b},{Slot:1b,id:"minecraft:wheat",Count:1b},{Slot:2b,id:"minecraft:wheat",Count:1b},{Slot:3b,id:"minecraft:wheat",Count:1b},{Slot:5b,id:"minecraft:wheat",Count:1b}]} run data merge block ~ ~-1 ~ {Items:{}}

#旧アイテム変換
give @a[nbt={Inventory:[{id:"minecraft:trident",Count:1b,tag:{ItemName:Mugiwara}}]}] knowledge_book{Recipes:["minecraft:crafting_table"],display:{Name:'{"text":"Straw Hat","color":"white","italic":false}',Lore:['{"text":"Category:Hat","color":"gray","italic":false}','{"text":" ","color":"white","italic":false}','{"text":"[RClick: Throw]","color":"white","italic":false}','{"text":"[Sneak: Wear]","color":"white","italic":false}','{"text":" "}','{"text":"至って普通の麦わら帽子。かぶって日差しを防ごう。","color":"white","italic":false}','{"text":"なぜか投げつける事ができるが、特に意味はない。","color":"white","italic":false}']},HideFlags:39,Unbreakable:1b,CustomModelData:9,ItemName:Mugiwara,AttributeModifiers:[{AttributeName:"generic.attackDamage",Name:"generic.attackDamage",Amount:0.0,Operation:0,UUIDLeast:539149,UUIDMost:862369,Slot:"mainhand"}]}
clear @a[nbt={Inventory:[{id:"minecraft:trident",Count:1b,tag:{ItemName:Mugiwara}}]}] trident{ItemName:Mugiwara}

#--------------------------
#以下共通フロー
#--------------------------

#武装解除
execute at @e[tag=ThWe_Disarming] run summon item ~ ~ ~ {PickupDelay:10s,Tags:["ThWe_DisarmedItem"],Item:{id:"minecraft:structure_void",Count:1b}}
execute as @e[tag=ThWe_Disarming,type=!player] at @s run data modify entity @e[tag=ThWe_DisarmedItem,limit=1,sort=nearest] Item set from entity @s HandItems[0]
execute as @a[tag=ThWe_Disarming] at @s run data modify entity @e[tag=ThWe_DisarmedItem,limit=1,sort=nearest] Item set from entity @s SelectedItem
execute as @e[tag=ThWe_Disarming] run replaceitem entity @s weapon.mainhand air
tag @e[tag=ThWe_Disarming] remove ThWe_Disarming
kill @e[tag=ThWe_DisarmedItem,nbt={Item:{id:"minecraft:structure_void",Count:1b}}]

#グルグルしている！
execute as @e[tag=ThWe_Spin] run function throwing_weapons:disc_spin_2

#ヒット判定、タグ"Thwe_Hit"を持ってる奴に実行
execute at @e[tag=ThWe_Hit] facing entity @p eyes run summon area_effect_cloud ^ ^ ^0.1 {Duration:1,Radius:0f,Tags:[pos]}
execute as @e[tag=ThWe_Hit] at @s run function throwing_weapons:move_xz
tag @e[tag=ThWe_Hit] remove ThWe_Hit

#スコアボードリセット
scoreboard players reset @a[scores={ThWe_Sneak=0..}] ThWe_Sneak
scoreboard players reset @a[scores={ThWe_Hit=0..}] ThWe_Hit
scoreboard players reset @a[scores={ThWe_RClick=1..}] ThWe_RClick
scoreboard players reset @a[scores={ThWe_Throw=1..}] ThWe_Throw

