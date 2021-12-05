execute store result score #tmp ckj01_data run data get entity @s Health 1
scoreboard players remove #tmp ckj01_data 1
execute if score #tmp ckj01_data matches ..0 run kill @s
execute store result entity @s Health int 1 run scoreboard players get #tmp ckj01_data
effect give @s wither 1 1 true