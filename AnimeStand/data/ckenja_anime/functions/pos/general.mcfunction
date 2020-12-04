#PosX
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja_anime.Pos.X[{end:1b}] run function ckenja_anime:pos/x/general
#PosY
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja_anime.Pos.Y[{end:1b}] run function ckenja_anime:pos/y/general
#PosZ
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja_anime.Pos.Z[{end:1b}] run function ckenja_anime:pos/z/general

data modify entity @s Pos set from storage ckenja_anime: EntityData.Pos
