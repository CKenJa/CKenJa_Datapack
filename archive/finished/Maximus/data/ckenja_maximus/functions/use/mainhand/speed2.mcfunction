execute store result score #temp ckenja_maximus run data get entity @s Attributes[2].Base 1000
scoreboard players add #temp ckenja_maximus 5
execute if score #temp ckenja_maximus matches ..400 store result entity @s Attributes[2].Base double 0.001 run scoreboard players get #temp ckenja_maximus