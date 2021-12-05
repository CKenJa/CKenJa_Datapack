execute as @a[scores={ckenja_use=1..}] run execute at @s run function #ckenja:scores/use
execute if score @s ckenja_use matches 0 run say 0
scoreboard players set @a ckenja_use 0