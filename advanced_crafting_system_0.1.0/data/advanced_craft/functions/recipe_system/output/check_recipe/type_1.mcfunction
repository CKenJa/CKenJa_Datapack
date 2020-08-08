




data modify storage advanced_datapacks:craft work_space[0].recipes append from storage advanced_datapacks:craft work_space[0].recipes[0]
data remove storage advanced_datapacks:craft work_space[0].recipes[0]


#照合処理
execute store success score #recipe_check ADCmatch_recipe run data modify storage advanced_datapacks:craft work_space[0].input_nbt set from storage advanced_datapacks:craft work_space[0].recipes[0].recipe_nbt

execute if score #recipe_check ADCmatch_recipe matches 1 run function advanced_craft:recipe_system/output/reset_input


execute if score #recipe_check ADCmatch_recipe matches 0 run function advanced_craft:recipe_system/output/count

execute if score #recipe_check ADCmatch_count matches 1 run tag @s remove ADCmatch_crafter
execute if score #recipe_check ADCmatch_recipe matches 1 run tag @s remove ADCmatch_crafter
execute if score #recipe_check ADCmatch_recipe matches 0 if score #recipe_check ADCmatch_count matches 0 run tag @s add ADCmatch_crafter
#プレビューのGUI管理
execute if entity @s[tag=!ADCcraft_lock] run function advanced_craft:crafting_table/display_item/preview

execute as @s[tag=!ADCmatch_crafter] if block ~ ~ ~ barrel{Items:[{tag:{ADCpreview_item:1b}}]} run data remove block ~ ~ ~ Items[{tag:{ADCpreview_item:1b}}] 

execute if entity @s[tag=ADCmatch_crafter,tag=!ADCcraft_lock] run function advanced_craft:crafting_table/preview/general

#loop

execute store result score #recipe_check ADCrecipe_id run data get storage advanced_datapacks:craft work_space[0].recipes[0].recipe_id 1

execute if score #recipe_check ADCmatch_recipe matches 1 unless score #recipe_check ADCrecipe_id matches 1 run function advanced_craft:recipe_system/output/check_recipe/type_1
