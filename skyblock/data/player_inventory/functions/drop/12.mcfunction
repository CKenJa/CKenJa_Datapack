#空でないかつガラス板でない、通常アイテムのみドロップ。
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].player_inventory.data[{Slot:12b}] unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].player_inventory.data[{Slot:12b,tag:{empty_item:1b}}] run summon item ~ ~ ~ {Item:{id:"stone",Count:1b,tag:{CustomModelData:1}},Tags:["repitem"],PickupDelay:3}
data modify entity @e[type=item,tag=repitem,limit=1,sort=nearest] Item set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].player_inventory.data[{Slot:12b}]
tag @e[tag=repitem] remove repitem
clear @s black_stained_glass_pane{display:{Name:'{"text":"bag slot"}'},empty_item:1b}
replaceitem entity @s inventory.3 black_stained_glass_pane{display:{Name:'{"text":"bag slot"}'},empty_item:1b} 1