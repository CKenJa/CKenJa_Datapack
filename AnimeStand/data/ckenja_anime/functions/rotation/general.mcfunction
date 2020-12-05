#RotationX
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja_anime.Rotation.X[{end:1b}] run function ckenja_anime:rotation/x/general
#RotationY
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja_anime.Rotation.Y[{end:1b}] run function ckenja_anime:rotation/y/general

data modify entity @s Rotation set from storage ckenja_anime: EntityData.Rotation
