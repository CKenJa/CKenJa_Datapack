execute store result score #tmp ckj02_data run data get entity @s Rotation[0]
scoreboard players add #tmp ckj02_data 15
execute store result entity @s Rotation[0] float 1 run scoreboard players get #tmp ckj02_data