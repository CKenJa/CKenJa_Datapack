execute at @a[scores={Drone_Sneak_Hold=0..10,Drone_Sneak=0}] if score @s[distance=..40] ScoreID2 = @p PlayerID run scoreboard players add @s[tag=Drone_Common,tag=!Drone_Port] Drone_Mode 1
execute at @a[scores={Drone_Sneak_Hold=0..10,Drone_Sneak=0}] if score @s[distance=..40] ScoreID2 = @p PlayerID run tag @s[tag=Drone_Common,tag=Drone_Port] remove Drone_Port
execute if entity @s[tag=Drone_Common,tag=!Drone_Port] at @a[scores={Drone_Sneak_Hold=20}] if score @s ScoreID2 = @p PlayerID run tp @s ~ ~ ~
execute if entity @s[tag=Drone_Common,tag=!Drone_Port] at @a[scores={Drone_Sneak_Hold=20}] if score @s ScoreID2 = @p PlayerID run playsound minecraft:entity.enderman.teleport neutral @a ~ ~ ~ 1 2
execute if entity @s[scores={Drone_Mode=1}] at @s if entity @e[tag=Drone_Porter,distance=..20] run tag @s add Drone_Port
execute if entity @s[scores={Drone_Mode=1}] at @s if entity @e[tag=Drone_Porter,distance=..20] run scoreboard players set @s Drone_Mode 0
execute if entity @s[tag=Drone_Port] unless entity @e[tag=Drone_Porter,distance=..20] run tag @s remove Drone_Port
execute if entity @s[tag=Drone_Port] unless entity @e[tag=Drone_Porter,distance=..20] run scoreboard players set @s Drone_Mode 1
