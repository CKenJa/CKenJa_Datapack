summon item ~ ~ ~ {Item:{id:"minecraft:dirt",Count:1b},Tags:["ckenja_pot_drop_item"]}
data modify entity @e[type=item,tag=ckenja_pot_drop_item,limit=1] Item set from entity @s HandItems[0]
#軽量化面倒だねあ
tag @e[type=item,tag=ckenja_pot_drop_item,limit=1] remove ckenja_pot_drop_item