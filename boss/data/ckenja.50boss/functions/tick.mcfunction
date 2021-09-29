scoreboard players set $i ckenja.50boss 20
execute as @e[type=marker,tag=ckenja.50boss.blockmarker] run function ckenja.50boss:tag
execute as @e[tag=Test] at @s run function ckenja.50boss:entity
execute as @e[type=marker,tag=ckenja.50boss.blockmarker.old] at @s align xyz if block ~ ~ ~ black_wool unless entity @e[type=marker,tag=ckenja.50boss.blockmarker,distance=..0.1] run setblock ~ ~ ~ air
execute as @e[type=marker,tag=ckenja.50boss.blockmarker.old] run kill @s