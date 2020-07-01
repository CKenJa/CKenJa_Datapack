execute at @s run tp ^ ^ ^1
execute at @s anchored eyes run execute if entity @e[distance=..2,tag=!ckenja_potato_q] unless entity @e[distance=2,type=item] run function ckenja_potato:potato/hit
execute at @s anchored eyes run execute unless block ^ ^ ^1 #ckenja:ckenja_air run kill @s
#ループ処理
execute unless score #i ckenja_potato matches 1.. run scoreboard players operation #i ckenja_potato = #potato_speed ckenja_potato
scoreboard players remove #i ckenja_potato 1
scoreboard players remove @s ckenja_potato 1
execute unless score @s ckenja_potato matches 1.. run kill @s
execute if score #i ckenja_potato matches 1.. run function ckenja_potato:potato/move