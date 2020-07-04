execute as @e[tag=ckenja_nether_core_initial] at @s run function ckenja_nether:core
scoreboard players operation #i ckenja_nether = #loop ckenja_nether
execute if entity @e[tag=ckenja_nether_core] run function ckenja_nether:main