#この担当がやること（functionは自由に分けてください）


#アイテム変更有りのクラフターが実行者

#emptyの追加

execute unless block ~ ~ ~ barrel{Items:[{Slot:0b}]} run replaceitem block ~ ~ ~ container.0 light_gray_stained_glass_pane{display:{Name:'{"text":" "}'},ADCempty_item:1b} 1
execute unless block ~ ~ ~ barrel{Items:[{Slot:1b}]} run replaceitem block ~ ~ ~ container.1 light_gray_stained_glass_pane{display:{Name:'{"text":" "}'},ADCempty_item:1b} 1
execute unless block ~ ~ ~ barrel{Items:[{Slot:2b}]} run replaceitem block ~ ~ ~ container.2 light_gray_stained_glass_pane{display:{Name:'{"text":" "}'},ADCempty_item:1b} 1
execute unless block ~ ~ ~ barrel{Items:[{Slot:9b}]} run replaceitem block ~ ~ ~ container.9 light_gray_stained_glass_pane{display:{Name:'{"text":" "}'},ADCempty_item:1b} 1
execute unless block ~ ~ ~ barrel{Items:[{Slot:10b}]} run replaceitem block ~ ~ ~ container.10 light_gray_stained_glass_pane{display:{Name:'{"text":" "}'},ADCempty_item:1b} 1
execute unless block ~ ~ ~ barrel{Items:[{Slot:11b}]} run replaceitem block ~ ~ ~ container.11 light_gray_stained_glass_pane{display:{Name:'{"text":" "}'},ADCempty_item:1b} 1
execute unless block ~ ~ ~ barrel{Items:[{Slot:18b}]} run replaceitem block ~ ~ ~ container.18 light_gray_stained_glass_pane{display:{Name:'{"text":" "}'},ADCempty_item:1b} 1
execute unless block ~ ~ ~ barrel{Items:[{Slot:19b}]} run replaceitem block ~ ~ ~ container.19 light_gray_stained_glass_pane{display:{Name:'{"text":" "}'},ADCempty_item:1b} 1
execute unless block ~ ~ ~ barrel{Items:[{Slot:20b}]} run replaceitem block ~ ~ ~ container.20 light_gray_stained_glass_pane{display:{Name:'{"text":" "}'},ADCempty_item:1b} 1




#emptyの削除
clear @a light_gray_stained_glass_pane{ADCempty_item:1b}
kill @e[type=item,nbt={Item:{tag:{ADCempty_item:1b}}}]
execute if block ~ ~-1 ~ hopper{Items:[{tag:{ADCempty_item:1b}}]} run data remove block ~ ~-1 ~ Items[{tag:{ADCempty_item:1b}}]
execute positioned ~ ~-1 ~ as @e[type=hopper_minecart,distance=..2,nbt={Items:[{tag:{ADCempty_item:1b}}]}] run data remove entity @s Items[{tag:{ADCempty_item:1b}}]





#中央
execute unless block ~ ~ ~ barrel{Items:[{Slot:3b,tag:{ADCcrafter_gui_item:1b}}]} run function advanced_craft:crafting_table/display_item/center/3
execute unless block ~ ~ ~ barrel{Items:[{Slot:4b,tag:{ADCcrafter_gui_item:1b}}]} run function advanced_craft:crafting_table/display_item/center/4
execute unless block ~ ~ ~ barrel{Items:[{Slot:5b,tag:{ADCcrafter_gui_item:1b}}]} run function advanced_craft:crafting_table/display_item/center/5
execute unless block ~ ~ ~ barrel{Items:[{Slot:12b,tag:{ADCcrafter_gui_item:1b}}]} run function advanced_craft:crafting_table/display_item/center/12
function advanced_craft:crafting_table/display_item/center/13
execute unless block ~ ~ ~ barrel{Items:[{Slot:14b,tag:{ADCcrafter_gui_item:1b}}]} run function advanced_craft:crafting_table/display_item/center/14
execute unless block ~ ~ ~ barrel{Items:[{Slot:21b,tag:{ADCcrafter_gui_item:1b}}]} run function advanced_craft:crafting_table/display_item/center/21
execute unless block ~ ~ ~ barrel{Items:[{Slot:22b,tag:{ADCcrafter_gui_item:1b}}]} run function advanced_craft:crafting_table/display_item/center/22
execute unless block ~ ~ ~ barrel{Items:[{Slot:23b,tag:{ADCcrafter_gui_item:1b}}]} run function advanced_craft:crafting_table/display_item/center/23















