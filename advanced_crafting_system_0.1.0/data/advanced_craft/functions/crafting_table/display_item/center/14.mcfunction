
kill @e[type=item,nbt={Item:{tag:{ADCcrafter_gui_item:1b}}}]

clear @a black_stained_glass_pane{ADCcrafter_gui_item:1b}

#はじき返し
execute if block ~ ~ ~ barrel{Items:[{Slot:14b}]} run summon item ~ ~1 ~ {Item:{id:"stone",Count:1b,tag:{CustomModelData:1}},Tags:["repitem"]}
data modify entity @e[type=item,tag=repitem,limit=1,sort=nearest] Item set from block ~ ~ ~ Items[{Slot:14b}]

tag @e[tag=repitem] remove repitem
replaceitem block ~ ~ ~ container.14 black_stained_glass_pane{display:{Name:'{"text":" "}'},ADCcrafter_gui_item:1b} 1










