forceload add 2 2

summon item 2 2 2 {Tags:["ckenja_pot_name_item"],Item:{id:"minecraft:dirt",Count:1b}}
data modify entity @e[type=item,tag=ckenja_pot_name_item,limit=1] Item set from entity @s HandItems[0]

#看板で出す
setblock 2 2 2 oak_sign{Text1:'{"selector":"@e[type=item,tag=ckenja_pot_name_item,limit=1]","color":"white","italic":false}'}
#看板のデータを取得して適切な場所に出せば表示はできる
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja_pot.Item.tag.display.Lore append from block 2 2 2 Text1

kill @e[type=item,tag=ckenja_pot_name_item,limit=1]
setblock 2 2 2 minecraft:air replace
forceload remove 2 2
