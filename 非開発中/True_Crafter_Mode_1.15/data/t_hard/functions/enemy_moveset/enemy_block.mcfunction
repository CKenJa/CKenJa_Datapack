execute at @s[nbt={Age:60}] run setblock ~ ~ ~ air destroy
#本体のブロックがなければ自壊、アイテム削除
execute unless block ~ ~ ~ mossy_cobblestone run kill @e[type=item,limit=1,sort=nearest,distance=..1]
execute unless block ~ ~ ~ mossy_cobblestone run kill @s