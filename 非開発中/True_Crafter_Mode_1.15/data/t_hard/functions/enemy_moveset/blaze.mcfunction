#execute if entity @s[nbt={Dimension:-1,OnGround:1b}] run setblock ~ ~ ~ fire

#3連ファイアボールの代わりにデカいのを撃つ
execute if entity @e[type=small_fireball,distance=..1.6] run tag @s add T_Hard_Blaze_Shoot
execute if entity @s[tag=T_Hard_Blaze_Shoot] run summon minecraft:fireball ~ ~1 ~ {direction:[0.0,0.0,0.0],power:[0.0,-0.01,0.0],Tags:["T_Hard_Blazeball","T_Hard_Blazeball0"]}
execute if entity @s[tag=T_Hard_Blaze_Shoot] run playsound minecraft:entity.blaze.death hostile @a ~ ~ ~ 2 1.5
execute if entity @s[tag=T_Hard_Blaze_Shoot] run kill @e[type=small_fireball,distance=..1.6,limit=1,sort=nearest] 
tag @s[tag=T_Hard_Blaze_Shoot] remove T_Hard_Blaze_Shoot

#通常ファイアボールとは別にデカいの撃ってくる
#execute if entity @p[distance=..16,tag=!T_Hard_Without] run scoreboard players add @s T_Hard_Moveset1 1
#execute if entity @s[scores={T_Hard_Moveset1=60}] run playsound minecraft:entity.blaze.shoot hostile @a ~ ~ ~ 1.5 0.5
#execute if entity @s[scores={T_Hard_Moveset1=60}] run playsound minecraft:entity.blaze.death hostile @a ~ ~ ~ 1.5 1.5
#execute if entity @s[scores={T_Hard_Moveset1=60}] positioned ~ ~1 ~ facing entity @p eyes run summon minecraft:fireball ^ ^ ^0.5 {direction:[0.0,0.0,0.0],power:[0.0,-0.0005,0.0],Tags:["T_Hard_Blazeball","T_Hard_Blazeball0"]}
#scoreboard players reset @s[scores={T_Hard_Moveset1=60..}] T_Hard_Moveset1