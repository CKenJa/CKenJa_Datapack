execute if block ~ ~ ~ #ckenja_nether:lag run function ckenja_nether:replace/lag
function ckenja_nether:replace
function ckenja_nether:summon
execute as @e[type=villager,distance=..2] at @s run summon piglin ~ ~ ~ {IsImmuneToZombification:1b}
execute as @e[type=villager,distance=..2] run kill @s 
kill @s