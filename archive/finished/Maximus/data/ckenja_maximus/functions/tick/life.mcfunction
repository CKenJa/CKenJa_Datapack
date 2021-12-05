scoreboard players operation #id ckenja_maximus = @s ckenja_id
execute at @s run execute as @e[type=minecraft:armor_stand,tag=ckenja_maximus] run execute if score @s ckenja_maximus = #id ckenja_maximus store success score #live ckenja_maximus run tp ~ ~ ~
execute if score #live ckenja_maximus matches 0 as @e[type=minecraft:armor_stand,tag=ckenja_maximus] run execute if score @s ckenja_maximus = #id ckenja_maximus run say die! copy関数呼び出し
say life