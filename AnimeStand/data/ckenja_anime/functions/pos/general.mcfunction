#PosX
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja_anime.PosX[{end:1b}] run function ckenja_anime:posx/general
#PosY
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja_anime.PosY[{end:1b}] run function ckenja_anime:posy/general
#PosZ
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja_anime.PosZ[{end:1b}] run function ckenja_anime:posz/general

data modify entity @s Pos set from storage ckenja_anime: EntityData.Pos
