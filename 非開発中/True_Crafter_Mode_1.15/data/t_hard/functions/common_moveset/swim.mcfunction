scoreboard players set @s Motion_Speed 1
summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["T_Hard_RotFix"],Duration:1}
execute as @e[tag=T_Hard_RotFix,limit=1,sort=nearest] run tp @s ~ ~ ~ facing entity @p[distance=..30,tag=!T_Hard_Without] eyes
data modify entity @s Rotation[0] set from entity @e[tag=T_Hard_RotFix,limit=1,sort=nearest] Rotation[0]
execute facing entity @p[distance=..30,tag=!T_Hard_Without] feet run summon area_effect_cloud ^ ^ ^0.1 {Duration:1,Radius:0f,Tags:[pos]}
function t_hard:move_slow
scoreboard players reset @s Motion_Speed