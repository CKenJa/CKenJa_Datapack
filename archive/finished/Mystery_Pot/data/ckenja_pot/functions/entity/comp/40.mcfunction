#ドロップ
summon item ~ ~2 ~ {Tags:["ckenja_pot_drop_item"],Item:{id:"minecraft:suspicious_stew",Count:1b},NoGravity:1b}
data modify entity @e[type=item,tag=ckenja_pot_drop_item,limit=1] Item merge from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja_pot.Item
data modify entity @e[type=item,tag=ckenja_pot_drop_item,limit=1] Owner merge from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja_pot.players[0]

#軽量化面倒だねあ
tag @e[type=item,tag=ckenja_pot_drop_item,limit=1] remove ckenja_pot_drop_item
#次のプレイヤーへorキル
data remove storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja_pot.players[0]
execute unless data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja_pot.players[0] run kill @s
scoreboard players set @s ckenja_pot 0
