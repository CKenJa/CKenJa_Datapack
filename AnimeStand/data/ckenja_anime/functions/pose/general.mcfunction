#BodyX
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja_anime.Body.X[{end:1b}] run function ckenja_anime:pose/bodyx/general
#BodyY
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja_anime.Body.Y[{end:1b}] run function ckenja_anime:pose/bodyy/general
#BodyZ
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja_anime.Body.Z[{end:1b}] run function ckenja_anime:pose/bodyz/general

#LeftArmX
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja_anime.LeftArm.X[{end:1b}] run function ckenja_anime:pose/leftarmx/general
#LeftArmY
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja_anime.LeftArm.Y[{end:1b}] run function ckenja_anime:pose/leftarmy/general
#LeftArmZ
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja_anime.LeftArm.Z[{end:1b}] run function ckenja_anime:pose/leftarmz/general

#RightArmX
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja_anime.RightArm.X[{end:1b}] run function ckenja_anime:pose/rightarmx/general
#RightArmY
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja_anime.RightArm.Y[{end:1b}] run function ckenja_anime:pose/rightarmy/general
#RightArmZ
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja_anime.RightArm.Z[{end:1b}] run function ckenja_anime:pose/rightarmz/general

#LeftLegX
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja_anime.LeftLeg.X[{end:1b}] run function ckenja_anime:pose/leftlegx/general
#LeftLegY
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja_anime.LeftLeg.Y[{end:1b}] run function ckenja_anime:pose/leftlegy/general
#LeftLegZ
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja_anime.LeftLeg.Z[{end:1b}] run function ckenja_anime:pose/leftlegz/general

#RightLegX
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja_anime.RightLeg.X[{end:1b}] run function ckenja_anime:pose/rightlegx/general
#RightLegY
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja_anime.RightLeg.Y[{end:1b}] run function ckenja_anime:pose/rightlegy/general
#RightLegZ
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja_anime.RightLeg.Z[{end:1b}] run function ckenja_anime:pose/rightlegz/general

#HeadX
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja_anime.Head.X[{end:1b}] run function ckenja_anime:pose/headx/general
#HeadY
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja_anime.Head.Y[{end:1b}] run function ckenja_anime:pose/heady/general
#HeadZ
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja_anime.Head.Z[{end:1b}] run function ckenja_anime:pose/headz/general

data modify entity @s Pose set from storage ckenja_anime: EntityData.Pose
