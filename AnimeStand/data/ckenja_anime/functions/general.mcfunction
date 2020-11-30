scoreboard players add @s ckenja_anime 1
execute unless score @s ckenja_anime matches -2147483648..2147483647 run function ckenja_anime:start
#storageが存在したら処理
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja_anime.Rotation run function ckenja_anime:rotation/general
#Poseが存在したら処理
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja_anime.Pose run function ckenja_anime:pose/general
