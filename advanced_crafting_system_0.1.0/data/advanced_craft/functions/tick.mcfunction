



#設置・撤去
function advanced_craft:crafting_table/crafter/general






#クラフト
execute as @e[tag=ADCmatch_crafter,tag=!ADCcraft_lock] at @s unless block ~ ~ ~ barrel{Items:[{Slot:13b,tag:{ADCcrafter_gui_item:1b}}]} run function advanced_craft:crafting_table/craft_action/general


#完成品があったらロック
execute as @e[type=item_frame,tag=ADCcustom_crafter,tag=ADCcrafted] at @s run function advanced_craft:crafting_table/output_slot/general

#レシピ照会
execute if entity @e[type=item_frame,tag=ADCcustom_crafter] run function advanced_craft:recipe_system/output/loop





#GUIのclear/kill＆再設置
execute as @e[type=item_frame,tag=ADCcustom_crafter,tag=ADCitems_change] at @s run function advanced_craft:crafting_table/display_item/general





