
#ポイズンボール射出
execute positioned ^ ^ ^-0.5 facing entity @p[distance=5..16,tag=!T_Hard_Without] feet positioned ^ ^ ^0.5 if entity @s[distance=..0.22] run scoreboard players add @s T_Hard_Moveset1 1
execute if entity @s[scores={T_Hard_Moveset1=40}] run playsound minecraft:entity.spider.death master @a ~ ~ ~ 1 2
execute if entity @s[scores={T_Hard_Moveset1=40}] run summon item ~ ~ ~ {Tags:["T_Hard_Poison_Ball","T_Hard_Poison_Ball0"],Motion:[0.0,0.0,0.0],Item:{id:"minecraft:slime_ball",Count:1b},Age:5900,PickupDelay:9999}
effect give @s[scores={T_Hard_Moveset1=40}] slowness 1 9 true
scoreboard players reset @s[scores={T_Hard_Moveset1=40..}] T_Hard_Moveset1
