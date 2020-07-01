execute at @s run tp ^ ^ ^1
execute at @s run execute as @e[distance=..2,tag=!ckenja_potato] run function ckenja_potato:cannon/damage
execute at @s anchored eyes run execute if entity @e[distance=..2,tag=!ckenja_potato] run function ckenja_potato:cannon/explosion
execute at @s anchored eyes run execute unless block ^ ^ ^1 #ckenja:ckenja_air run function ckenja_potato:cannon/explosion
#ループ処理
execute unless score #i ckenja_potato matches 1.. run scoreboard players operation #i ckenja_potato = #speed ckenja_potato
scoreboard players remove #i ckenja_potato 1
scoreboard players remove @s ckenja_potato 1
execute unless score @s ckenja_potato matches 1.. run kill @s
execute if score #i ckenja_potato matches 1.. run function ckenja_potato:cannon/projectile