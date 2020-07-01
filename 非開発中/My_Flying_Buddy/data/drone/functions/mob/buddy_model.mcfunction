#アマスタのポーズを縦の首の向きに
execute if entity @s store result entity @s Pose.Head[0] float 1 run data get entity @s Rotation[1]

#ID付与
execute if entity @s[tag=Drone_Model0] run scoreboard players add #DroneID_Core DroneID_Core 1
execute if entity @s[tag=Drone_Model0] run scoreboard players operation @s DroneID = #DroneID_Core DroneID_Core
execute if entity @s[tag=Drone_Model0] run summon minecraft:villager ~ ~ ~ {DeathTime:19s,Silent:1b,Age:-2147483648,Tags:["Drone_Common","Drone_Core","Drone_Core0","NeedID"],ActiveEffects:[{Id:14b,Amplifier:0b,Duration:999999,ShowParticles:0b},{Id:28b,Amplifier:0b,Duration:999999,ShowParticles:0b}],Attributes:[{Name:generic.movementSpeed,Base:0}]}
scoreboard players set @s[tag=Drone_Model0] Drone_Mode 0

#エンジン
execute if entity @s[scores={Drone_Mode=0}] positioned ~ ~0.7 ~ run particle minecraft:dust 0.5 1 1 0.7 ^0.37 ^ ^0.37 0 0 0 0 0
execute if entity @s[scores={Drone_Mode=0}] positioned ~ ~0.7 ~ run particle minecraft:dust 0.5 1 1 0.7 ^-0.37 ^ ^0.37 0 0 0 0 0
execute if entity @s[scores={Drone_Mode=0}] positioned ~ ~0.7 ~ run particle minecraft:dust 0.5 1 1 0.7 ^0.37 ^ ^-0.37 0 0 0 0 0
execute if entity @s[scores={Drone_Mode=0}] positioned ~ ~0.7 ~ run particle minecraft:dust 0.5 1 1 0.7 ^-0.37 ^ ^-0.37 0 0 0 0 0

execute if entity @s[scores={Drone_Mode=1}] positioned ~ ~0.7 ~ run particle minecraft:dust 0.8 1 1 0.7 ^0.37 ^ ^0.37 0 0 0 0 0
execute if entity @s[scores={Drone_Mode=1}] positioned ~ ~0.7 ~ run particle minecraft:dust 0.8 1 1 0.7 ^-0.37 ^ ^0.37 0 0 0 0 0
execute if entity @s[scores={Drone_Mode=1}] positioned ~ ~0.7 ~ run particle minecraft:dust 0.8 1 1 0.7 ^0.37 ^ ^-0.37 0 0 0 0 0
execute if entity @s[scores={Drone_Mode=1}] positioned ~ ~0.7 ~ run particle minecraft:dust 0.8 1 1 0.7 ^-0.37 ^ ^-0.37 0 0 0 0 0

#プレイヤーのほうを向く
execute at @s unless entity @e[type=#drone:can_pick,distance=..20,tag=!Drone_Caught] facing entity @p eyes run tp @s ~ ~ ~ ~ ~10
execute as @s[tag=Drone_Model,tag=!Drone_Port] at @s facing entity @p eyes run tp @s ~ ~ ~ ~ ~10

#ポート地点のほうを向く
execute if entity @s[tag=Drone_Port] unless entity @e[type=item,distance=..20,tag=!Drone_Caught] facing entity @e[limit=1,tag=Drone_Porter,distance=2..20] eyes run tp @s ~ ~ ~ ~ ~10

#アイテムのほうを向く
execute unless entity @p[distance=..3] facing entity @e[limit=1,type=item,distance=..20,tag=!Drone_Caught] eyes run tp @s ~ ~ ~ ~ ~10

#付近の敵に防御貫通ビーム
execute facing entity @e[type=#drone:hostiles,distance=..10] eyes run tp @s ~ ~ ~ ~ ~10

#水平キープ
execute at @s if entity @s[x_rotation=20..90] run tp @s ~ ~ ~ ~ 19
execute at @s if entity @s[x_rotation=-90..-20] run tp @s ~ ~ ~ ~ -19

#ドローンのコア部分が死ぬと消滅
tag @s[tag=Drone_Model,tag=!Drone_Model0] add Drone_Break
execute at @e[tag=Drone_Core] if score @s DroneID = @e[tag=Drone_Core,limit=1,sort=nearest] DroneID run tag @s remove Drone_Break
execute if entity @s[tag=Drone_Break] run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:armor_stand",Count:1b,tag:{display:{Name:'{"text":"Tech Kit:Buddy","color":"gold","italic":false}',Lore:['{"text":"Category:Minion?","color":"gray","italic":false}','{"text":" "}','{"text":"宙に浮くへんてこなマシン…？","color":"white","italic":false}','{"text":"それなりに便利で、ある種の愛嬌もあるが、","color":"white","italic":false}','{"text":"あまり賢くはないのでよく地形に引っかかる。","color":"white","italic":false}']},CustomModelData:12,EntityTag:{NoGravity:1b,Small:1b,Invisible:1b,Tags:["Drone_Model","Drone_Model0","Drone_Common","NeedID"],Pose:{Head:[0.1f,0.1f,0.1f]},DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:armor_stand",Count:1b,tag:{CustomModelData:12}}]}}}}
kill @s[tag=Drone_Break]