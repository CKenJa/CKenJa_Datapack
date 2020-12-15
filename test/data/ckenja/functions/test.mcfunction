say yeah
execute store result score #tmp ckj02_data run data get entity @s Pos[2]
scoreboard players add #tmp ckj02_data 1
execute store result entity @s Pos[2] int 1 run scoreboard players get #tmp ckj02_data
setblock ~ ~ ~ acacia_planks

execute store result score #tmp ckj02_data run data get entity @s Pos[2]
scoreboard players add #tmp ckj02_data 1
execute store result entity @s Pos[2] int 1 run scoreboard players get #tmp ckj02_data
setblock ~ ~ ~ oak_planks

execute store result score #tmp ckj02_data run data get entity @s Pos[2]
scoreboard players add #tmp ckj02_data 1
execute store result entity @s Pos[2] int 1 run scoreboard players get #tmp ckj02_data
setblock ~ ~ ~ stone