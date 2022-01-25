#> ckenja.fishing_star:tick
#
#
#
# @within tag/function minecraft:tick

#初期化
scoreboard objectives add ckj.fishing_star dummy

#浮きがあったらガーディアン操作
execute as @a at @s anchored eyes run function ckenja.fishing_star:player

#メモリ開放
#data remove storage ckenja.fishing_star: temp
#scoreboard objectives remove ckj.fishing_star