execute store result score #temp ckenja_maximus run data get entity @s Attributes[0].Base
scoreboard players add #temp ckenja_maximus 1
execute if score #temp ckenja_maximus matches ..60 store result entity @s Attributes[0].Base double 1 run scoreboard players get #temp ckenja_maximus