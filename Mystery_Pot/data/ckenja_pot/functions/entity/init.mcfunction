#周りの人のUUIDをckenja_pos.UUIDsの中に入れる
execute as @a[distance=..4] run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja_pot.players append from entity @s UUID
#あとついでにプレイヤー数もとい具材数も記憶しておこう
execute store result score @s ckenja_pot run data get storage oh_my_dat _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja_pot.number_of_players
execute if score @s ckenja_pot matches 3.. run scoreboard players set ckenja_pot @s 4
#アンカー
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja_pot.players prepend value [I;0,0,0,0,0]
