summon area_effect_cloud ^ ^ ^0.1 {Duration:1,Radius:0f,Tags:[pos]}
function t_hard:move_xz
data modify entity @s Motion[1] set value 0.4
scoreboard players reset @s Motion_Speed