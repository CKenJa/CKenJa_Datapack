#> ckenja.starbreak:jansky_spinning_bow/
#
# 弓引いてる奴に実行
#
# @within function ckenja.starbreak:player

execute if score @s ckj.stbr.jsbow matches 20.. run function ckenja.starbreak:jansky_spinning_bow/charged
execute store success score @s ckj.stbr.arrow run clear @s #arrows 0
