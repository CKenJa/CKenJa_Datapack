












#プレビュー
clear @a #advanced_craft:all_items{ADCpreview_item:1b}
kill @e[type=item,nbt={Item:{tag:{ADCpreview_item:1b}}}]
execute if block ~ ~ ~ barrel{Items:[{Slot:6b}]} unless block ~ ~ ~ barrel{Items:[{Slot:6b,tag:{ADCpreview_item:1b}}]} run function advanced_craft:crafting_table/display_item/output/6
execute if block ~ ~ ~ barrel{Items:[{Slot:7b}]} unless block ~ ~ ~ barrel{Items:[{Slot:7b,tag:{ADCpreview_item:1b}}]} run function advanced_craft:crafting_table/display_item/output/7
execute if block ~ ~ ~ barrel{Items:[{Slot:8b}]} unless block ~ ~ ~ barrel{Items:[{Slot:8b,tag:{ADCpreview_item:1b}}]} run function advanced_craft:crafting_table/display_item/output/8
execute if block ~ ~ ~ barrel{Items:[{Slot:15b}]} unless block ~ ~ ~ barrel{Items:[{Slot:15b,tag:{ADCpreview_item:1b}}]} run function advanced_craft:crafting_table/display_item/output/15
execute if block ~ ~ ~ barrel{Items:[{Slot:16b}]} unless block ~ ~ ~ barrel{Items:[{Slot:16b,tag:{ADCpreview_item:1b}}]} run function advanced_craft:crafting_table/display_item/output/16
execute if block ~ ~ ~ barrel{Items:[{Slot:17b}]} unless block ~ ~ ~ barrel{Items:[{Slot:17b,tag:{ADCpreview_item:1b}}]} run function advanced_craft:crafting_table/display_item/output/17
execute if block ~ ~ ~ barrel{Items:[{Slot:24b}]} unless block ~ ~ ~ barrel{Items:[{Slot:24b,tag:{ADCpreview_item:1b}}]} run function advanced_craft:crafting_table/display_item/output/24
execute if block ~ ~ ~ barrel{Items:[{Slot:25b}]} unless block ~ ~ ~ barrel{Items:[{Slot:25b,tag:{ADCpreview_item:1b}}]} run function advanced_craft:crafting_table/display_item/output/25
execute if block ~ ~ ~ barrel{Items:[{Slot:26b}]} unless block ~ ~ ~ barrel{Items:[{Slot:26b,tag:{ADCpreview_item:1b}}]} run function advanced_craft:crafting_table/display_item/output/26







