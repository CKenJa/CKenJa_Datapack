execute store result entity @s Rotation[0] float 1 run scoreboard players get #yaw ckenja_potato
execute store result entity @s Rotation[1] float 1 run scoreboard players get #pitch ckenja_potato
scoreboard players operation @s ckenja_potato = #range ckenja_potato
#自分に当たるのを防ぐ
tp ^ ^ ^2
tag @s remove ckenja_potato_initial