data modify storage ckenja_anime: EntityData set from entity @s
scoreboard players operation $tmp2 ckj02_data = @s ckenja_anime

execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja_anime.Rotation run function ckenja_anime:rotation/general
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja_anime.Pose run function ckenja_anime:pose/general
execute if data storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].ckenja_anime.Pos run function ckenja_anime:pos/general
