#周りの人のUUIDをckenja_pos.UUIDsの中に入れる
execute as @a[distance=..4] run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja_pot.players append from entity @s UUID
#あとついでにプレイヤー数もとい具材数も記憶しておこう
execute store result score @s ckenja_pot run data get storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja_pot.players
execute if score @s ckenja_pot < #minimum ckenja_pot run scoreboard players operation @s ckenja_pot = #minimum ckenja_pot
#アンカー
#data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja_pot.players prepend value [I;0,0,0,0,0]
tag @s remove ckenja_pot_initial
#アイテムの設定
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja_pot.Item set value {id:"minecraft:suspicious_stew",count:1b,tag:{display:{Name:'{"text":"Alchemystery Pot","color":"dark_purple"}'},ctc:{id:"alchemystery_pot",from:"ckenja_pot:"}}}