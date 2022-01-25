#> ckenja.fishing_star:player
#
#
#
# @within function ckenja.fishing_star:tick

#浮き
execute as @e[type=fishing_bobber,distance=..30] at @s run function ckenja.fishing_star:bobber
execute if score $bober_number ckj.fishing_star matches 1 run function ckenja.fishing_star:have_bobber
execute if score $bober_number ckj.fishing_star matches 0 run function ckenja.fishing_star:not_bobber
scoreboard players set $bober_number ckj.fishing_star 0