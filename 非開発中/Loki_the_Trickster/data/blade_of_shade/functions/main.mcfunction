
#デコイボールチャージ
execute at @a[nbt={SelectedItem:{tag:{ItemName:Loki_the_Trickster,ItemMode:Loki_Decoy}}},scores={Loki_Charge=20..,Loki_Sneak=0,FoodLevel=6..}] run playsound minecraft:entity.arrow.shoot player @a ~ ~ ~ 1 0
execute at @a[nbt={SelectedItem:{tag:{ItemName:Loki_the_Trickster,ItemMode:Loki_Decoy}}},scores={Loki_Charge=20..,Loki_Sneak=0,FoodLevel=6..}] run summon minecraft:armor_stand ~ ~1.67 ~ {Small:1b,Invisible:1b,Tags:["Loki_Decoy_Shoot","Loki_Decoy_Ball"],DisabledSlots:4144959}
execute at @a[nbt={SelectedItem:{tag:{ItemName:Loki_the_Trickster,ItemMode:Loki_Decoy}}},scores={Loki_Charge=20..,Loki_Sneak=0,FoodLevel=6..}] positioned ~ ~1.67 ~ run summon area_effect_cloud ^ ^ ^0.5 {Duration:1,Radius:0f,Tags:[pos]}
effect give @a[nbt={SelectedItem:{tag:{ItemName:Loki_the_Trickster,ItemMode:Loki_Decoy}}},scores={Loki_Charge=20..,Loki_Sneak=0,FoodLevel=6..}] minecraft:hunger 1 200 true
#空腹で発動失敗
execute at @a[nbt={SelectedItem:{tag:{ItemName:Loki_the_Trickster,ItemMode:Loki_Decoy}}},scores={Loki_Charge=20..,Loki_Sneak=0,FoodLevel=..5}] run playsound minecraft:block.note_block.bass player @a ~ ~ ~ 1.5 0
#チャージ維持
execute at @a[nbt={SelectedItem:{tag:{ItemName:Loki_the_Trickster,ItemMode:Loki_Decoy}}},scores={Loki_Charge=20}] run playsound minecraft:entity.guardian.death player @a ~ ~ ~ 1.5 2
execute at @a[nbt={SelectedItem:{tag:{ItemName:Loki_the_Trickster,ItemMode:Loki_Decoy}}},scores={Loki_Charge=20}] run playsound minecraft:entity.experience_orb.pickup player @a ~ ~ ~ 1.5 1
execute at @a[nbt={SelectedItem:{tag:{ItemName:Loki_the_Trickster,ItemMode:Loki_Decoy}}},scores={Loki_Charge=20..}] run particle minecraft:smoke ~ ~1 ~ 0.25 0.5 0.25 0 2

execute as @e[tag=Loki_Decoy_Shoot] run function chuz_common:move
tag @e[tag=Loki_Decoy_Shoot] remove Loki_Decoy_Shoot

#デコイボール
execute at @e[tag=Loki_Decoy_Ball] run particle minecraft:smoke ~ ~ ~ 0.1 0.1 0.1 0 2
execute at @e[tag=Loki_Decoy_Ball] run particle minecraft:crit ~ ~ ~ 0 0 0 0 1
execute at @e[tag=Loki_Decoy_Ball,nbt={OnGround:1b}] run summon minecraft:armor_stand ~ ~ ~ {Invulnerable:1b,ShowArms:1b,NoBasePlate:1b,Tags:["Loki_Decoy","Loki_Decoy_Taunt"],Pose:{LeftArm:[0f,5f,-90f],RightArm:[0f,-5f,90f],LeftLeg:[0f,-5f,0f],RightLeg:[0f,5f,0f],Head:[0f,0f,0.1f]},DisabledSlots:4144959,Passengers:[{id:"minecraft:slime",Silent:1b,DeathTime:19,DeathLootTable:"minecraft:empty",NoAI:1b,Tags:["Loki_Decoy_Target"],ActiveEffects:[{Id:11b,Amplifier:4b,Duration:999},{Id:14b,Amplifier:0b,Duration:999}]}],ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{display:{color:11573855}}},{id:"minecraft:leather_leggings",Count:1b},{id:"minecraft:leather_chestplate",Count:1b,tag:{display:{color:11573855}}},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:"aef49675-0952-4d12-bc7d-a9e1087de84d",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzlkNjUxZDIyMzhiODczZmU0M2FmYzM4NTQ0N2RhY2VkMWYzYTcyOTJjYTQ3ZWU0NzYyMzI5NzNjMTM5ZjI0YyJ9fX0="}]}}}}]}
execute as @e[tag=Loki_Decoy_Ball,nbt={OnGround:1b}] run kill @s

#デコイボムの挑発
execute as @e[tag=Loki_Decoy_Taunt] at @s run tp @s ~ ~ ~ facing entity @e[distance=0.1..,sort=nearest,limit=1,type=!snowball,tag=!Loki_Decoy_Target] feet
execute as @e[tag=Loki_Decoy_Taunt] run data modify entity @s Motion[1] set value 0.5
execute at @e[tag=Loki_Decoy_Taunt] run particle minecraft:poof ~ ~1 ~ 0 0 0 0.25 25
execute at @e[tag=Loki_Decoy_Taunt] run playsound minecraft:entity.wither.shoot neutral @a ~ ~ ~ 2 2
execute at @e[tag=Loki_Decoy_Taunt] run playsound minecraft:entity.chicken.egg neutral @a ~ ~ ~ 2 0
execute at @e[tag=Loki_Decoy_Taunt] at @e[distance=0.1..5,tag=!Loki_Decoy_Target] run summon minecraft:snowball ~ ~-0.31 ~ {owner:{L:0,M:0},Motion:[0.0,10.0,0.0],Tags:["Loki_Decoy_Attack"],Item:{id:"minecraft:gray_stained_glass",Count:1b}}
execute as @e[type=minecraft:snowball,tag=Loki_Decoy_Attack] at @s run data modify entity @s owner.L set from entity @e[tag=Loki_Decoy_Target,limit=1,sort=nearest] UUIDLeast
execute as @e[type=minecraft:snowball,tag=Loki_Decoy_Attack] at @s run data modify entity @s owner.M set from entity @e[tag=Loki_Decoy_Target,limit=1,sort=nearest] UUIDMost
tag @e[tag=Loki_Decoy_Taunt] remove Loki_Decoy_Taunt

scoreboard players add @e[tag=Loki_Decoy] Decoy_Action 1
execute as @e[tag=Loki_Decoy,scores={Decoy_Action=5}] run data modify entity @s Invulnerable set value 1
execute as @e[tag=Loki_Decoy,scores={Decoy_Action=59}] run data modify entity @s Invulnerable set value 0
tag @e[tag=Loki_Decoy,scores={Decoy_Action=60}] add Loki_Decoy_Taunt
execute as @e[tag=Loki_Decoy,scores={Decoy_Action=61}] run data modify entity @s Invulnerable set value 1
execute as @e[tag=Loki_Decoy,scores={Decoy_Action=119}] run data modify entity @s Invulnerable set value 0
tag @e[tag=Loki_Decoy,scores={Decoy_Action=120}] add Loki_Decoy_Taunt
execute as @e[tag=Loki_Decoy,scores={Decoy_Action=121}] run data modify entity @s Invulnerable set value 1

tag @e[tag=Loki_Decoy,scores={Decoy_Action=150}] add Decoy_Spin1
execute at @e[tag=Loki_Decoy,scores={Decoy_Action=150..}] run particle minecraft:smoke ~ ~1.8 ~ 0 0 0 0 2
execute at @e[tag=Loki_Decoy,scores={Decoy_Action=150}] run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 2 1
tag @e[tag=Loki_Decoy,scores={Decoy_Action=160}] remove Decoy_Spin1
tag @e[tag=Loki_Decoy,scores={Decoy_Action=160}] add Decoy_Spin2
execute at @e[tag=Loki_Decoy,scores={Decoy_Action=160}] run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 2 1.5
tag @e[tag=Loki_Decoy,scores={Decoy_Action=170}] remove Decoy_Spin2
tag @e[tag=Loki_Decoy,scores={Decoy_Action=170}] add Decoy_Spin3
execute at @e[tag=Loki_Decoy,scores={Decoy_Action=170..}] run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 2 2
tag @e[tag=Loki_Decoy,scores={Decoy_Action=160}] add Decoy_Spin2
execute at @e[tag=Loki_Decoy,scores={Decoy_Action=180}] run summon creeper ~ ~ ~ {Fuse:0b}
execute at @e[tag=Loki_Decoy,scores={Decoy_Action=180}] run kill @e[tag=Loki_Decoy_Target,limit=1,sort=nearest]
kill @e[tag=Loki_Decoy,scores={Decoy_Action=180}]

#頭くるくる
execute as @e[tag=Decoy_Spin1] store result entity @s Pose.Head[1] float -1 run scoreboard players add @s Decoy_Spin 20
execute as @e[tag=Decoy_Spin2] store result entity @s Pose.Head[1] float -1 run scoreboard players add @s Decoy_Spin 30
execute as @e[tag=Decoy_Spin3] store result entity @s Pose.Head[1] float -1 run scoreboard players add @s Decoy_Spin 40
scoreboard players set @e[tag=Loki_Decoy,scores={Decoy_Spin=360..}] Spin 0

#タツマキ発動
execute at @a[nbt={SelectedItem:{tag:{ItemName:Loki_the_Trickster,ItemMode:Loki_Disarm}}},scores={Loki_Charge=10..,Loki_Sneak=0,FoodLevel=6..}] run playsound minecraft:entity.bat.takeoff neutral @a ~ ~ ~ 2 1
execute at @a[nbt={SelectedItem:{tag:{ItemName:Loki_the_Trickster,ItemMode:Loki_Disarm}}},scores={Loki_Charge=10..,Loki_Sneak=0,FoodLevel=6..}] run playsound minecraft:entity.wither.shoot player @a ~ ~ ~ 2 2
execute at @a[nbt={SelectedItem:{tag:{ItemName:Loki_the_Trickster,ItemMode:Loki_Disarm}}},scores={Loki_Charge=10..,Loki_Sneak=0,FoodLevel=6..}] run summon minecraft:armor_stand ~ ~1 ~ {Small:1b,Invisible:1b,Tags:["Loki_Disarm","Loki_Disarm0","NeedID"]}
effect give @a[nbt={SelectedItem:{tag:{ItemName:Loki_the_Trickster,ItemMode:Loki_Disarm}}},scores={Loki_Charge=10..,Loki_Sneak=0,FoodLevel=6..}] minecraft:hunger 1 200 true
execute as @e[tag=Loki_Disarm0] at @s store result entity @s Rotation[0] float 1 run data get entity @p Rotation[0]
execute as @e[tag=Loki_Disarm0] at @s store result entity @s Rotation[1] float 1 run data get entity @p Rotation[1]
tag @e[tag=Loki_Disarm0] remove Loki_Disarm0
#空腹で発動失敗
execute at @a[nbt={SelectedItem:{tag:{ItemName:Loki_the_Trickster,ItemMode:Loki_Disarm}}},scores={Loki_Charge=10..,Loki_Sneak=0,FoodLevel=..5}] run playsound minecraft:block.note_block.bass player @a ~ ~ ~ 1.5 0
#チャージ維持
execute at @a[nbt={SelectedItem:{tag:{ItemName:Loki_the_Trickster,ItemMode:Loki_Disarm}}},scores={Loki_Charge=10}] run playsound minecraft:entity.guardian.death player @a ~ ~ ~ 1.5 2
execute at @a[nbt={SelectedItem:{tag:{ItemName:Loki_the_Trickster,ItemMode:Loki_Disarm}}},scores={Loki_Charge=10}] run playsound minecraft:entity.experience_orb.pickup player @a ~ ~ ~ 1.5 1
execute at @a[nbt={SelectedItem:{tag:{ItemName:Loki_the_Trickster,ItemMode:Loki_Disarm}}},scores={Loki_Charge=10..}] run particle minecraft:smoke ~ ~1 ~ 0.25 0.5 0.25 0 2

#タツマキ
execute at @e[tag=Loki_Disarm] run playsound minecraft:entity.horse.breathe neutral @a ~ ~ ~ 2 2
execute at @e[tag=Loki_Disarm] run particle minecraft:sweep_attack ~ ~ ~ 0 0 0 1 0 force
execute at @e[tag=Loki_Disarm] run particle minecraft:cloud ~ ~ ~ 0.5 0 0.5 0 2
scoreboard players add @e[tag=Loki_Disarm] BulletRemain 1
execute at @e[tag=Loki_Disarm,tag=!Loki_Disarm0,tag=!Loki_Disarm_Return] run summon area_effect_cloud ^ ^ ^0.5 {Duration:1,Radius:0f,Tags:[pos]}
execute as @e[tag=Loki_Disarm,tag=!Loki_Disarm0,tag=!Loki_Disarm_Return] run function chuz_common:move
execute at @e[tag=Loki_Disarm] as @e[type=item,distance=..2] at @s run tp @s @e[tag=Loki_Disarm,limit=1,sort=nearest]

#タツマキヒット
execute at @e[tag=Loki_Disarm,tag=!Loki_Disarm_Return,scores={BulletRemain=3..}] run tag @e[distance=..2,type=!item,tag=!Loki_Disarm,type=!area_effect_cloud] add Loki_Disarming
execute at @e[tag=Loki_Disarm,tag=!Loki_Disarm_Return,scores={BulletRemain=3..}] run effect give @e[distance=..2,type=!item] slowness 2 10
execute at @e[tag=Loki_Disarm,tag=!Loki_Disarm_Return,scores={BulletRemain=3..}] run effect give @e[distance=..2,type=!item] wither 1 2
execute at @e[tag=Loki_Disarm,tag=!Loki_Disarm_Return,scores={BulletRemain=3..}] if entity @e[distance=..2,type=!item,tag=!Loki_Disarm,type=!area_effect_cloud] run particle minecraft:crit ~ ~ ~ 0 0 0 0.5 5
execute as @e[tag=Loki_Disarm,tag=!Loki_Disarm_Return,scores={BulletRemain=3..}] at @s if entity @e[distance=..2,type=!item,tag=!Loki_Disarm,type=!area_effect_cloud] run tp @s ~ ~ ~ facing entity @e[type=!area_effect_cloud,tag=!Loki_Disarm,type=!player,sort=random,limit=1,distance=2..10]

#戻ってきたぞ！
execute as @e[tag=Loki_Disarm,scores={BulletRemain=3..}] at @s if entity @a[distance=..2] run tag @s add Loki_Disarm_Return
tag @e[tag=Loki_Disarm,scores={BulletRemain=15..}] add Loki_Disarm_Return
execute as @a at @e[tag=Loki_Disarm_Return] if score @s PlayerID = @e[tag=Loki_Disarm,limit=1,sort=nearest] ScoreID2 facing entity @s feet run teleport @e[tag=Loki_Disarm,limit=1,sort=nearest] ^ ^ ^1.5 facing entity @s
execute as @e[tag=Loki_Disarm_Return] at @s if entity @a[distance=..1.25] run kill @s

#武装解除
execute at @e[tag=Loki_Disarming] run summon item ~ ~ ~ {PickupDelay:10s,Tags:["Loki_DisarmedItem"],Item:{id:"minecraft:structure_void",Count:1b}}
execute as @e[tag=Loki_Disarming,type=!player] at @s run data modify entity @e[tag=Loki_DisarmedItem,limit=1,sort=nearest] Item set from entity @s HandItems[0]
execute as @a[tag=Loki_Disarming] at @s run data modify entity @e[tag=Loki_DisarmedItem,limit=1,sort=nearest] Item set from entity @s SelectedItem
execute as @e[tag=Loki_Disarming] run replaceitem entity @s weapon.mainhand air
tag @e[tag=Loki_Disarming] remove Loki_Disarming
kill @e[tag=Loki_DisarmedItem,nbt={Item:{id:"minecraft:structure_void",Count:1b}}]

#スニークちょん押しでモードチェンジ
execute at @a[nbt={SelectedItem:{tag:{ItemName:Loki_the_Trickster}}},scores={Loki_Charge=0..10,Loki_Sneak=0}] run playsound minecraft:ui.button.click player @a ~ ~ ~ 1 2

execute at @a[nbt={SelectedItem:{tag:{ItemName:Loki_the_Trickster,ItemMode:Loki_Decoy}}},scores={Loki_Charge=..10,Loki_Sneak=0}] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:2,Tags:["Loki_Change_Disarm"]}
execute at @e[tag=Loki_Change_Disarm,nbt={Age:1}] run replaceitem entity @p[nbt={SelectedItem:{tag:{ItemName:Loki_the_Trickster}}}] weapon.mainhand minecraft:iron_sword{ItemMode:"Loki_Disarm",Unbreakable:1b,HideFlags:3,Enchantments:[{id:"minecraft:unbreaking",lvl:0s}],display:{Lore:['{"text":"[Tap Sneak: Mode Change]","color":"white","italic":false}','{"text":"[Hold Sneak: Disarm Wind]","color":"white","italic":false}','{"text":" ","color":"blue"}','{"text":"Damage +6","color":"blue","italic":false}'],Name:'{"text":"Loki the Trickster <Disarm>","color":"gold","italic":false}'},ItemName:"Loki_the_Trickster",Damage:0,AttributeModifiers:[{UUIDMost:48839,UUIDLeast:283256,Amount:5.5d,Slot:"mainhand",AttributeName:"generic.attackDamage",Operation:0,Name:"generic.attackDamage"},{UUIDMost:890405,UUIDLeast:407044,Amount:-2,Slot:"mainhand",AttributeName:"generic.attackSpeed",Operation:0,Name:"generic.attackSpeed"}]}

execute at @a[nbt={SelectedItem:{tag:{ItemName:Loki_the_Trickster,ItemMode:Loki_Disarm}}},scores={Loki_Charge=..10,Loki_Sneak=0}] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:2,Tags:["Loki_Change_Decoy"]}
execute at @e[tag=Loki_Change_Decoy,nbt={Age:1}] run replaceitem entity @p[nbt={SelectedItem:{tag:{ItemName:Loki_the_Trickster}}}] weapon.mainhand minecraft:iron_sword{ItemMode:"Loki_Decoy",Unbreakable:1b,HideFlags:3,Enchantments:[{id:"minecraft:unbreaking",lvl:0s}],display:{Lore:['{"text":"[Tap Sneak: Mode Change]","color":"white","italic":false}','{"text":"[Hold Sneak: Decoy Bomb]","color":"white","italic":false}','{"text":" ","color":"blue"}','{"text":"Damage +6","color":"blue","italic":false}'],Name:'{"text":"Loki the Trickster <Decoy>","color":"gold","italic":false}'},ItemName:"Loki_the_Trickster",Damage:0,AttributeModifiers:[{UUIDMost:48839,UUIDLeast:283256,Amount:5.5d,Slot:"mainhand",AttributeName:"generic.attackDamage",Operation:0,Name:"generic.attackDamage"},{UUIDMost:890405,UUIDLeast:407044,Amount:-2,Slot:"mainhand",AttributeName:"generic.attackSpeed",Operation:0,Name:"generic.attackSpeed"}]}

#クラフト
execute as @e[tag=Custom_Crafter_Crafting] at @s if block ~ ~-0.5 ~ minecraft:dropper{Items:[{Slot:0b,id:"minecraft:iron_ingot",Count:1b},{Slot:1b,id:"minecraft:end_crystal",Count:1b},{Slot:2b,id:"minecraft:iron_ingot",Count:1b},{Slot:3b,id:"minecraft:iron_ingot",Count:1b},{Slot:4b,id:"minecraft:clock",Count:1b},{Slot:5b,id:"minecraft:iron_ingot",Count:1b},{Slot:7b,id:"minecraft:stick",Count:1b}]} run tag @s add Custom_Crafter_Succes
execute as @e[tag=Custom_Crafter_Crafting] at @s if block ~ ~-0.5 ~ minecraft:dropper{Items:[{Slot:0b,id:"minecraft:iron_ingot",Count:1b},{Slot:1b,id:"minecraft:end_crystal",Count:1b},{Slot:2b,id:"minecraft:iron_ingot",Count:1b},{Slot:3b,id:"minecraft:iron_ingot",Count:1b},{Slot:4b,id:"minecraft:clock",Count:1b},{Slot:5b,id:"minecraft:iron_ingot",Count:1b},{Slot:7b,id:"minecraft:stick",Count:1b}]} run data merge block ~ ~-1 ~ {Items:[{Slot:4b,id:"minecraft:iron_sword",Count:1b,tag:{ItemMode:"Loki_Decoy",Unbreakable:1b,HideFlags:3,Enchantments:[{id:"minecraft:unbreaking",lvl:0s}],display:{Lore:['{"text":"[Tap Sneak: Mode Change]","color":"white","italic":false}','{"text":"[Hold Sneak: Create Decoy]","color":"white","italic":false}','{"text":" ","color":"blue"}','{"text":"Damage +6","color":"blue","italic":false}'],Name:'{"text":"Loki the Trickster <Decoy>","color":"gold","italic":false}'},ItemName:"Loki_the_Trickster",Damage:0,AttributeModifiers:[{UUIDMost:48839,UUIDLeast:283256,Amount:5.5d,Slot:"mainhand",AttributeName:"generic.attackDamage",Operation:0,Name:"generic.attackDamage"},{UUIDMost:890405,UUIDLeast:407044,Amount:-2,Slot:"mainhand",AttributeName:"generic.attackSpeed",Operation:0,Name:"generic.attackSpeed"}]}}]}

#スニーク処理
scoreboard players add @a[nbt={SelectedItem:{tag:{ItemName:Loki_the_Trickster}}},scores={Loki_Sneak=1..}] Loki_Charge 1
scoreboard players reset @a[scores={Loki_Sneak=0}] Loki_Charge
scoreboard players set @a[scores={Loki_Sneak=1..}] Loki_Sneak 0
scoreboard players reset @a[nbt=!{SelectedItem:{tag:{ItemName:Loki_the_Trickster}}}] Loki_Charge

#満腹ゲージをスコア化
execute as @a store result score @s FoodLevel run data get entity @s foodLevel