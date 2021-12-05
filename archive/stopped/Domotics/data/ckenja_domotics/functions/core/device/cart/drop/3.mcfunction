summon item ~ ~1 ~ {Item:{id:"light_gray_stained_glass_pane",Count:1b,tag:{CustomModelData:12600}},Tags:["ckenja_replace_item"]}
data modify entity @e[type=item,tag=ckenja_replace_item,limit=1,sort=nearest] Item set from entity @s Items[{Slot:3b}]
tag @e[tag=ckenja_replace_item] remove ckenja_replace_item