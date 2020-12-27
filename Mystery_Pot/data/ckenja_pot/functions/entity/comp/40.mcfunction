#ドロップ
summon item ~ ~ ~ {Item:{id:"minecraft:dirt",Count:1b},Tags:["ckenja_pot_drop_item"]}
data modify entity @e[type=item,distance=..0.4,tag=ckenja_pot_drop_item,limit=1] Item merge from storage oh_my_dat _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja_pot.Item
data modify entity @e[type=item,distance=..0.4,tag=ckenja_pot_drop_item,limit=1] Owner merge from storage oh_my_dat _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja_pot.players[0]


#軽量化面倒だねあ
tag @e[type=item,distance=..0.4,tag=ckenja_pot_drop_item,limit=1] remove ckenja_pot_drop_item
#次のプレイヤーへorキル
data remove storage oh_my_dat _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja_pot.players[0]
execute unless data storage oh_my_dat _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja_pot.players run kill @s
scoreboard players set @s ckenja_pot 0