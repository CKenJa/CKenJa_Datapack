#透明付与
effect give @s minecraft:invisibility 1 0 true

#ダメージ音
execute if entity @s[nbt={HurtTime:10s}] run playsound minecraft:block.note_block.bit neutral @a ~ ~ ~ 1.5 0
execute if entity @s[nbt={HurtTime:9s}] run playsound minecraft:block.note_block.bit neutral @a ~ ~ ~ 1.5 0

#ID付与
execute if entity @s[tag=Drone_Core0] run scoreboard players operation @s DroneID = @e[tag=Drone_Model0,limit=1,sort=nearest] DroneID
scoreboard players set @e[tag=Drone_Core0] Drone_Mode 0
tag @s[tag=Drone_Core0] remove Drone_Core0
tag @e[tag=Drone_Model0,limit=1,sort=nearest] remove Drone_Model0

#付近のモデルを呼ぶ
execute at @s if score @s DroneID = @e[tag=Drone_Model,limit=1,sort=nearest] DroneID run tp @e[tag=Drone_Model,limit=1,sort=nearest] ~ ~ ~

#アイテムのほうを向く
execute if entity @s[scores={Drone_Mode=0}] at @s facing entity @e[type=item,limit=1,distance=..20,tag=!Drone_Caught] eyes run summon area_effect_cloud ^ ^ ^0.1 {Duration:1,Radius:0f,Tags:[pos]}

#アイテムを掴む
execute if entity @e[type=#drone:can_pick,distance=..1.5,tag=!Drone_Caught] run playsound minecraft:entity.item.pickup neutral @a ~ ~ ~ 1 2
execute as @e[type=#drone:can_pick,distance=..1.5] run data merge entity @s {NoGravity:1b,Motion:[0.0,0.0,0.0]}
tag @e[type=#drone:can_pick,distance=..1.5] add Drone_Caught

#ポート地点の方を向く
execute if entity @s[tag=Drone_Port,scores={Drone_Mode=1}] run tag @s remove Drone_Port

#プレイヤーの方へ動く
execute if entity @s[scores={Drone_Mode=0},tag=!Drone_Port] at @a if score @s[distance=..40] ScoreID2 = @p PlayerID if block ~ ~3 ~ #drone:no_collision run summon area_effect_cloud ~ ~2 ~ {Duration:2,Radius:0f,Tags:[Drone_Pos,NeedID]}
execute if entity @s[scores={Drone_Mode=0},tag=!Drone_Port] at @a if score @s[distance=..40] ScoreID2 = @p PlayerID unless block ~ ~3 ~ #drone:no_collision rotated ~ 0 run summon area_effect_cloud ^ ^ ^-1.5 {Duration:2,Radius:0f,Tags:[Drone_Pos,NeedID]}

#飛行フロー
execute unless entity @e[tag=pos,distance=..1] run tp @s @s
execute if entity @e[tag=pos,distance=..1] run scoreboard players set @s Motion_Speed 1
execute if entity @e[tag=pos,distance=..1] run function drone:move
execute if entity @e[tag=pos,distance=..1] run playsound minecraft:block.water.ambient neutral @a ~ ~ ~ 0.5 2

#付近の敵に防御貫通ビーム
execute if entity @e[type=#drone:hostiles,distance=..10] run tag @s add Drone_Attack
execute unless entity @e[type=#drone:hostiles,distance=..10] run tag @s remove Drone_Attack
scoreboard players add @s[tag=Drone_Attack] Drone_Move 1
execute if entity @s[tag=Drone_Attack,scores={Drone_Move=40}] run playsound minecraft:entity.arrow.shoot neutral @a ~ ~ ~ 1.5 1.5
execute if entity @s[tag=Drone_Attack,scores={Drone_Move=40}] run playsound minecraft:block.note_block.bit neutral @a ~ ~ ~ 1.5 2
execute if entity @s[tag=Drone_Attack,scores={Drone_Move=40}] facing entity @e[type=#drone:hostiles,limit=1,sort=nearest] feet positioned ^ ^ ^1 run function drone:projectile/drone_shot
scoreboard players reset @s[scores={Drone_Move=40..}] Drone_Move

#オペレーター長押しでの転送、片付け
execute if entity @s[tag=!Drone_Port] at @a[scores={Drone_Sneak_Hold=40}] if score @s[distance=..3] ScoreID2 = @p PlayerID run kill @s
