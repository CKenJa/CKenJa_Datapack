#空でないかつガラス板でない、通常アイテムのみドロップ。
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].player_inventory.data[{Slot:13b}] unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].player_inventory.data[{Slot:13b,tag:{general:{type:"empty_slot"}}}] run summon item ~ ~ ~ {Item:{id:"stone",Count:1b,tag:{CustomModelData:1}},Tags:["repitem"],PickupDelay:3}
data modify entity @e[type=item,tag=repitem,limit=1,sort=nearest] Item set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].player_inventory.data[{Slot:13b}]
tag @e[tag=repitem] remove repitem
clear @s black_stained_glass_pane{display:{Name:'{"text":"bag slot 2"}'},general:{type:"empty_slot"}}
replaceitem entity @s inventory.4 black_stained_glass_pane{display:{Name:'{"text":"bag slot 2"}'},general:{type:"empty_slot"}} 1