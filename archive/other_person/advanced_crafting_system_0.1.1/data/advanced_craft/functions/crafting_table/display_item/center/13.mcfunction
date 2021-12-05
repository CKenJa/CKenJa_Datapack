


kill @e[type=item,nbt={Item:{tag:{ADCcrafter_gui_item:1b}}}]

clear @a red_stained_glass_pane{ADCcrafter_gui_item:1b}
clear @a magenta_stained_glass_pane{ADCcrafter_gui_item:1b}
clear @a lime_stained_glass_pane{ADCcrafter_gui_item:1b}


#はじき返し
execute if block ~ ~ ~ barrel{Items:[{Slot:13b}]} unless block ~ ~ ~ barrel{Items:[{Slot:13b,tag:{ADCcrafter_gui_item:1b}}]} run summon item ~ ~1 ~ {Item:{id:"stone",Count:1b,tag:{CustomModelData:1}},Tags:["repitem"]}
data modify entity @e[type=item,tag=repitem,limit=1,sort=nearest] Item set from block ~ ~ ~ Items[{Slot:13b}]

tag @e[tag=repitem] remove repitem

execute if entity @s[tag=ADCmatch_crafter] run replaceitem block ~ ~ ~ container.13 lime_stained_glass_pane{ADCcrafter_gui_item:1b,display:{Lore:['{"text":"クリックでクラフトを確定","color":"green","italic":false}'],Name:'{"text":"決定ボタン","color":"gold","bold":true,"italic":false}'}} 1

execute if entity @s[tag=ADCcraft_lock] run replaceitem block ~ ~ ~ container.13 red_stained_glass_pane{ADCbutton_lock:1b,ADCcrafter_gui_item:1b,display:{Lore:['{"text":"【lock】前回クラフトしたアイテムが残っているため","color":"red","italic":false}','{"text":"一時的にロックされています","color":"red","italic":false}'],Name:'{"text":"決定ボタン","color":"gold","bold":true,"italic":false}'}} 1

execute if entity @s[tag=!ADCmatch_crafter,tag=!ADCcraft_lock] run replaceitem block ~ ~ ~ container.13 magenta_stained_glass_pane{ADCcrafter_gui_item:1b,display:{Lore:['{"text":"素材がレシピと一致しません","color":"white","italic":false}','{"text":"素材を入れてください","color":"white","italic":false}'],Name:'{"text":"決定ボタン","color":"gold","bold":true,"italic":false}'}} 1

























