#> ckenja.lootender:open/marker
#
#
#
# @within function ckenja.lootender:open/main

#チェストの中身がないなら生成する(後で)
function #oh_marker_dat:please
data remove storage ckenja.lootender:__temp__ player
data remove storage ckenja.lootender:__temp__ common
data modify storage ckenja.lootender:__temp__ player set from entity @s data.oh_marker_dat[-4][-4][-4][-4][-4][-4][-4][-4].ckenja.lootender
data modify storage ckenja.lootender:__temp__ commmon set from entity @s data.ckenja.lootender
