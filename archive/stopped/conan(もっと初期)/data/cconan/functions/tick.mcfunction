#スコアボード
scoreboard players set @a c_use 0
scoreboard players set @a c_crouch 0
#博士
execute as @e[type=item,nbt={Item:{id:"minecraft:nether_star",Count:1b,tag:{display:{Name:'{"text":"Volkswagen Beetle"}'}}}}] run function cconan:professor
#腕時計
#execute as @a[nbt={SelectedItem:{tag:{display:{Lore:['{"text":"これは時計型麻酔銃といってな、"}']}}}}] run function cconan:watch
