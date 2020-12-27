summon item ~ ~ ~ {Tags:["ckenja_pot_drop_item"],Item:{id:"minecraft:dirt",Count:1b}}
data modify entity @e[type=item,tag=ckenja_pot_drop_item,limit=1] Item set from entity @s ArmorItems[3]
data remove entity @s ArmorItems[3]
#軽量化面倒だねあ
tag @e[type=item,tag=ckenja_pot_drop_item,limit=1] remove ckenja_pot_drop_item