execute as @a[scores={ckenja_sneak=0}] run scoreboard players set @s ckenja_sneaktime 0
execute as @a[scores={ckenja_sneaktime=1..}] run execute at @s run function #ckenja:scores/sneaktime