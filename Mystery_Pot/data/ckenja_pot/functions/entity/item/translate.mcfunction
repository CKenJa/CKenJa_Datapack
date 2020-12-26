forceload add 2 2

summon item 2 2 2 {Tag:["ckenja_pot_name_item"],Item:{id:"minecraft:dirt",Count:1b}}
data modify entity @e[type=item,distance=..0.4,tag=ckenja_pot_name_item,limit=1] Item set from entity @s HandItems[0]

#看板で出す
setblock 2 2 2 oak_sign{Text1:'{"selector":"@e[type=item,distance=..0.4,tag=ckenja_pot_name_item,limit=1]"}'}
#看板のデータを取得して適切な場所に出せば表示はできる
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja_pot.Item.tag.display.Lore append from block ~ ~1 ~ Text1

kill @e[type=item,distance=..0.4,tag=ckenja_pot_name_item,limit=1]
setblock 2 2 2 minecraft:air
forceload remove 2 2
