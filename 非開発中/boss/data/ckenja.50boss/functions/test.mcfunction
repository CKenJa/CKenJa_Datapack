#> ckenja.50boss:test
#
#
#
# @within function ckenja.50boss:tick

#新しいマーカーを設置
execute as @e[tag=Test] at @s run function ckenja.50boss:entity
#古いマーカーの場所に新しいマーカーがなかったらブロックを消す
execute as @e[type=marker,tag=ckenja.50boss.blockmarker.old] at @s align xyz if block ~ ~ ~ crimson_hyphae unless entity @e[type=marker,tag=ckenja.50boss.blockmarker,distance=..0.9] run function ckenja.50boss:break
#用済みの新しいマーカーを古いマーカーにする。そこに古いマーカーがすでにあるなら自殺
execute as @e[type=marker,tag=ckenja.50boss.blockmarker] run function ckenja.50boss:tag