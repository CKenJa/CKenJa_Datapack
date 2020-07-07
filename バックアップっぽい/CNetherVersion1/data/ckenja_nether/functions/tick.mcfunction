execute as @e[tag=ckenja_nether_core_initial] at @s run function ckenja_nether:core
scoreboard players operation #i ckenja_nether = #loop ckenja_nether
execute as @e[tag=ckenja_nether_core] run function ckenja_nether:main
execute as @e[tag=ckenja_nether_core] run function ckenja_nether:rotation
execute as @e[tag=ckenja_nether_water] run function ckenja_nether:water
execute unless entity @e[tag=ckenja_nether_core] as @e[tag=ckenja_nether_marker] at @s run kill @s

execute as @e[nbt={Item:{tag:{CKenJaNether:1b}}},type=potion] run function ckenja_nether:break