execute store result score #temp ckenja_maximus run data get entity @s Attributes[7].Base 100
scoreboard players add #temp ckenja_maximus 1
execute if score #temp ckenja_maximus matches ..113 store result entity @s Attributes[7].Base double 0.01 run scoreboard players get #temp ckenja_maximus