
execute store result score #tmp ckj01_data run data get entity @s Health 1
scoreboard players remove #tmp ckj01_data 1
execute store result entity @s Health int 1 run scoreboard players get #tmp ckj01_data