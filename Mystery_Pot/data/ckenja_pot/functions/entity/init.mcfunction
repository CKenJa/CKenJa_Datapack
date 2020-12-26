#周りの人のUUIDをckenja_pos.UUIDsの中に入れる
execute as @a[distance=..4] run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja_pot.players append from entity @s UUID
#あとついでにプレイヤー数も記憶しておこう
execute store result storage oh_my_dat _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja_pot.number_of_player int 1 run data get storage oh_my_dat _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja_pot.number_of_players
#アンカー
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja_pot.players prepend value [I;0,0,0,0,0]