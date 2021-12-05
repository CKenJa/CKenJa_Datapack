#> ckenja.starbreak:player
#
# 全プレイヤーに毎tick実行
#
# @within ckenja.starbreak:tick

data modify storage ckenja.starbreak: player set from entity @s

# jansky_spinning_bow
    execute if score @s ckj.stbr.jsbow matches 1.. run function ckenja.starbreak:jansky_spinning_bow/

    # 長押し検知
        execute if score @s ckj.stbr.jsbow.a matches 0 run scoreboard players set @s ckj.stbr.jsbow 0
        scoreboard players add @s ckj.stbr.jsbow.a 0