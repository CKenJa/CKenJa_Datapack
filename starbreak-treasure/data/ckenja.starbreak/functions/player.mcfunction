#> ckenja.starbreak:player
#
# 全プレイヤーに毎tick実行
#
# @within ckenja.starbreak:tick

data modify storage ckenja.starbreak: player set from entity @s

execute if data storage ckenja.starbreak: player.SelectedItem.tag.ctc{id:"jansky_spinning_bow",from:"ckenja.starbreak"} run function ckenja.starbreak:jansky_spinning_bow/main
execute if score @s ckj.stbr.jsbow.a matches 0 run scoreboard players set @s ckj.stbr.jsbow 0
scoreboard players add @s ckj.stbr.jsbow.a 0