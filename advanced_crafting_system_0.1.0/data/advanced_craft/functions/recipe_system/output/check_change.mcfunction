#変更を検知する
execute store success score #general ADCitems_change run data modify storage advanced_datapacks:craft work_space[0].Items set from block ~ ~ ~ Items

execute if score #general ADCitems_change matches 1 run tag @s add ADCitems_change
execute if score #general ADCitems_change matches 0 run tag @s remove ADCitems_change

execute if score #general ADCitems_change matches 1 run function advanced_craft:recipe_system/output/general








