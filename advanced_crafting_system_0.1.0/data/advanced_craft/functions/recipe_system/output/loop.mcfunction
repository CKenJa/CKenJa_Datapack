#1~10まで再帰loopする



#処理
execute as @e[type=item_frame,tag=ADCcustom_crafter] if score @s ADCcrafter_id = #recipe_check ADCcrafter_id at @s run function advanced_craft:recipe_system/output/check_change  

#loop
data modify storage advanced_datapacks:craft work_space append from storage advanced_datapacks:craft work_space[0]
data remove storage advanced_datapacks:craft work_space[0]
execute store result score #recipe_check ADCcrafter_id run data get storage advanced_datapacks:craft work_space[0].crafter_id 1
execute unless score #recipe_check ADCcrafter_id matches 1 run function advanced_craft:recipe_system/output/loop





