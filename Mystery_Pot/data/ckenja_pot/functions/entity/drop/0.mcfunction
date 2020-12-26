summon item ~ ~ ~ {Item:{id:"minecraft:dirt",Count:1b},Tags:["ckenja_pot_drop_item"]}
data modify entity @e[type=item,distance=..0.4,tag=ckenja_pot_drop_item,limit=1] Item set from entity @s ArmorItems[0]
data remove entity @s ArmorItems[0]
#軽量化面倒だねあ
tag @e[type=item,distance=..0.4,tag=ckenja_pot_drop_item,limit=1] remove ckenja_pot_drop_item