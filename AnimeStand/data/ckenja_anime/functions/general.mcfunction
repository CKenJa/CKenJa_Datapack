scoreboard players add @s ckenja_anime 1
execute unless score @s ckenja_anime matches 0.. run function ckenja_anime:start
#Rotationが存在したら処理
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja_anime.Rotation run function ckenja_anime:rotation/general
#Poseが存在したら処理
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja_anime.Pose run function ckenja_anime:pose/general
#Posが存在したら処理
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja_anime.Pos run function ckenja_anime:pos/general
