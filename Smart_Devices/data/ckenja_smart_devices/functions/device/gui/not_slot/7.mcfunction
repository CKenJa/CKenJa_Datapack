#異物ドロップ
summon item ~ ~1 ~ {Item:{id:"light_gray_stained_glass_pane",Count:1b,tag:{CustomModelData:12600}},Tags:["ckenja_replace_item"]}
data modify entity @e[type=item,tag=ckenja_replace_item,limit=1,sort=nearest] Item set from block ~ ~ ~ Items[{Slot:7b}]
tag @e[tag=ckenja_replace_item] remove ckenja_replace_item
#置き換え
replaceitem block ~ ~ ~ container.7 black_stained_glass_pane{display:{Name:'{"text":" "}'},ckenja:{tags:["ckenja_smart_devices:gui","ckenja_smart_devices:not_slot"]}} 1