#RotationX
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja_anime.RotationX[{end:1b}] run function ckenja_anime:rotationx/general
#RotationY
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja_anime.RotationY[{end:1b}] run function ckenja_anime:rotationy/general

data modify entity @s Rotation set from storage ckenja_anime: EntityData.Rotation
