#> ckenja.starbreak:jansky_spinning_bow/charged
#
# 矢を十分に引いているときに
#
# @within function ckenja.starbreak:jansky_spinning_bow/

#弾幕
execute if data storage ckenja.starbreak: player.SelectedItem.tag.ctc{id:"jansky_spinning_bow",from:"ckenja.starbreak"} run function ckenja.starbreak:jansky_spinning_bow/main
execute if data storage ckenja.starbreak: player.Inventory[{Slot:-106}].tag.ctc{id:"jansky_spinning_bow",from:"ckenja.starbreak"} run function ckenja.starbreak:jansky_spinning_bow/off

# 矢があれば矢を放つ
    execute if score @s ckj.stbr.arrow matches 1.. if score @s ckj.stbr.jsbow.a matches 0 run function ckenja.starbreak:jansky_spinning_bow/end