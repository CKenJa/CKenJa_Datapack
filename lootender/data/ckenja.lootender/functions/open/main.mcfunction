#> ckenja.lootender:open/main
#
#
#
# @within function ckenja.lootender:open/check_marker

stopsound @a[distance=..24] block block.ender_chest.open
playsound block.chest.open block @s ~ ~ ~ 1 1

scoreboard players operation _ oh_marker_dat = @s OhMyDatID
#エンチェスの中身を仕舞う
execute as @e[type=marker,tag=ckenja.lootender.marker,distance=..1] run function ckenja.lootender:open/marker

#プレイヤーごとの中身がないならコピーする(後で)
#execute unless data storage ckenja.lootender:__temp__ marker EnderItems run function ckenja.lootender:generate/_

#中身をエンダーチェストにコピーする
data modify storage player_item_tuner: result.fill set value {id:"minecraft:air"}
data modify storage player_item_tuner: result.items set from storage ckenja.lootender:__temp__ player.EnderItems
function #player_item_tuner:replace/enderchest

tag @s add ckenja.lootender.opened
