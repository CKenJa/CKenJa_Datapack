#Tech Kit:Operatorで付近のドローンのモード切り替え
execute if entity @s[scores={Drone_Sneak_Hold=0..10,Drone_Sneak=0}] run playsound minecraft:ui.button.click player @a ~ ~ ~ 1 2
execute if entity @s[scores={Drone_Sneak_Hold=0..10,Drone_Sneak=0}] as @e[tag=Drone_Common] at @a[scores={Drone_Sneak_Hold=0..10,Drone_Sneak=0}] if score @s[distance=..40] ScoreID2 = @p PlayerID run scoreboard players add @s[tag=Drone_Common,tag=!Drone_Port] Drone_Mode 1
execute if entity @s[scores={Drone_Sneak_Hold=0..10,Drone_Sneak=0}] as @e[tag=Drone_Common] at @a[scores={Drone_Sneak_Hold=0..10,Drone_Sneak=0}] if score @s[distance=..40] ScoreID2 = @p PlayerID run tag @s[tag=Drone_Common,tag=Drone_Port] remove Drone_Port

#スニーク処理
scoreboard players add @s[scores={Drone_Sneak=1..}] Drone_Sneak_Hold 1
scoreboard players reset @s[scores={Drone_Sneak=0}] Drone_Sneak_Hold

#右クリ
execute if entity @s[scores={Drone_RClick=1..}] unless entity @s[scores={Drone_CoolTime=0..}] run playsound minecraft:entity.player.attack.sweep player @a ~ ~ ~ 1 1
execute if entity @s[scores={Drone_RClick=1..}] unless entity @s[scores={Drone_CoolTime=0..}] run playsound minecraft:entity.enderman.teleport player @a ~ ~ ~ 1 2
execute if entity @s[scores={Drone_RClick=1..}] unless entity @s[scores={Drone_CoolTime=0..}] run playsound minecraft:entity.shulker.shoot player @a ~ ~ ~ 1.5 2
execute if entity @s[scores={Drone_RClick=1..}] unless entity @s[scores={Drone_CoolTime=0..}] positioned ~ ~1.25 ~ run summon minecraft:armor_stand ^-0.5 ^ ^ {Rotation:[0.0f,0.0f],Tags:["SlashShot","SlashShot0"],Invisible:1b,Small:1b} 
execute if entity @s[scores={Drone_RClick=1..}] unless entity @s[scores={Drone_CoolTime=0..}] run scoreboard players set @s Drone_CoolTime 20
scoreboard players reset @s[scores={Drone_RClick=1..}] Drone_RClick

#クールタイム
scoreboard players remove @s[scores={Drone_CoolTime=0..}] Drone_CoolTime 1
execute at @a[scores={Drone_CoolTime=0}] run playsound minecraft:block.note_block.bit player @a ~ ~ ~ 1 2
scoreboard players reset @s[scores={Drone_CoolTime=0}] Drone_CoolTime