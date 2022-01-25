#> ckenja.fishing_star:bobber
#
#
#
# @within function ckenja.fishing_star:player

#初回
execute if entity @s[tag=!ckenja.fishing_star.bobber,distance=..1] run function ckenja.fishing_star:init
execute if entity @s[tag=ckenja.fishing_star.bobber] run scoreboard players set $bober_number ckj.fishing_star 1